## 微信小程序-UnionId

>如果开发者拥有多个移动应用、网站应用、和公众帐号（包括小程序），可通过 UnionID 来区分用户的唯一性，因为只要是同一个微信开放平台帐号下的移动应用、网站应用和公众帐号（包括小程序），用户的 UnionID 是唯一的。换句话说，同一用户，对同一个微信开放平台下的不同应用，UnionID是相同的。

### UnionID获取途径
>绑定了开发者帐号的小程序，可以通过以下途径获取 UnionID。  
> 1. 开发者可以直接通过 wx.login + code2Session 获取到该用户 UnionID，无须用户授权。
> 2. 小程序端调用云函数时，可在云函数中通过 Cloud.getWXContext 获取 UnionID。
> 3. 用户在小程序（暂不支持小游戏）中支付完成后，开发者可以直接通过getPaidUnionId接口获取该用户的 UnionID，无需用户授权。注意：本接口仅在用户支付完成后的5分钟内有效，请开发者妥善处理。

[UnionID 机制说明](https://developers.weixin.qq.com/miniprogram/dev/framework/open-ability/union-id.html)