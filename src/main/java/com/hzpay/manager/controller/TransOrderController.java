package com.hzpay.manager.controller;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;
import com.hzpay.manager.model.TransOrder;
import com.hzpay.manager.plugin.AmountUtil;
import com.hzpay.manager.plugin.DateUtil;
import com.hzpay.manager.plugin.PageModel;
import com.hzpay.manager.service.TransOrderService;
import org.apache.commons.lang3.StringUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.util.CollectionUtils;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;


import java.util.List;

@Controller
@RequestMapping("/trans_order")
public class TransOrderController {

    private Logger _log = LoggerFactory.getLogger(PayChannelController.class);

    @Autowired
    private TransOrderService transOrderService;

    @RequestMapping("/list.html")
    public String listInput(ModelMap model) {
        return "trans_order/list";
    }

    @RequestMapping("/list")
    @ResponseBody
    public String list(@ModelAttribute TransOrder transOrder, Integer pageIndex, Integer pageSize) {
        PageModel pageModel = new PageModel();
        int count = transOrderService.count(transOrder);
        if(count <= 0) return JSON.toJSONString(pageModel);
        List<TransOrder> transOrderList = transOrderService.getTransOrderList((pageIndex-1)*pageSize, pageSize, transOrder);
        if(!CollectionUtils.isEmpty(transOrderList)) {
            JSONArray array = new JSONArray();
            for(TransOrder po : transOrderList) {
                JSONObject object = (JSONObject) JSONObject.toJSON(po);
                if(po.getCreateTime() != null) object.put("createTime", DateUtil.date2Str(po.getCreateTime()));
                if(po.getAmount() != null) object.put("amount", AmountUtil.convertCent2Dollar(po.getAmount()+""));
                array.add(object);
            }
            pageModel.setList(array);
        }
        pageModel.setCount(count);
        pageModel.setMsg("ok");
        pageModel.setRel(true);
        return JSON.toJSONString(pageModel);
    }

    @RequestMapping("/view.html")
    public String viewInput(String transOrderId, ModelMap model) {
        TransOrder item = null;
        if(StringUtils.isNotBlank(transOrderId)) {
            item = transOrderService.selectTransOrder(transOrderId);
        }
        if(item == null) {
            item = new TransOrder();
            model.put("item", item);
            return "trans_order/view";
        }
        JSONObject object = (JSONObject) JSON.toJSON(item);
        if(item.getTransSuccTime() != null) object.put("transSuccTime", DateUtil.date2Str(item.getTransSuccTime()));
        if(item.getExpireTime() != null) object.put("expireTime", DateUtil.date2Str(item.getExpireTime()));
        if(item.getAmount() != null) object.put("amount", AmountUtil.convertCent2Dollar(item.getAmount()+""));
        model.put("item", object);
        return "trans_order/view";
    }

}