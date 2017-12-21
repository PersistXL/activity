

//用户
var navs1 = [{
    "title": "我的信息",
    "icon": "fa fa-mortar-board ",
    "spread": false,
    "children": [{
        "title": "信息详情",
        "icon": " fa fa-id-card",
        "href": "../change/user_info.jsp"
    }]
}, {
    "title": "发布活动",
    "icon": "fa fa-bank",
    "spread": false,
    "children": [{
        "title": "查看活动详细信息",
        "icon": "fa-check-square-o",
        "href": "../change/active.jsp"
    },
        {
            "title": "书写活动内容",
            "icon": "fa-check-square-o",
            "href": "../change/release_activity.jsp"
        }]
},
    {
        "title": "与我相关",
        "icon": "fa fa-bank",
        "spread": false,
        "children": [{
            "title": "我发布过的活动",
            "icon": "fa-check-square-o",
            "href": "../change/new_message.jsp"
		},
            {
                "title": "查看系统通告",
                "icon": "fa-check-square-o",
                "href": "../change/seachMessag.jsp"
            }
		]
    },{
    "title": "关于我们",
    "icon": "fa fa-hand-o-right",
    "spread": false,
    "children": [{
        "title": "我们的简介",
        "icon": "&#xe641;",
        "href": "../change/about.jsp"
    }, {
        "title": "联系我们",
        "icon": " fa fa-envelope",
        "href": "../change/contact_us.jsp"
    }]
}
];