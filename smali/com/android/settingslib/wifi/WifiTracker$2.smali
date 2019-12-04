.class Lcom/android/settingslib/wifi/WifiTracker$2;
.super Landroid/content/BroadcastReceiver;
.source "WifiTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settingslib/wifi/WifiTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settingslib/wifi/WifiTracker;


# direct methods
.method constructor <init>(Lcom/android/settingslib/wifi/WifiTracker;)V
    .locals 0

    .line 1132
    iput-object p1, p0, Lcom/android/settingslib/wifi/WifiTracker$2;->this$0:Lcom/android/settingslib/wifi/WifiTracker;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    .line 1135
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.net.wifi.WIFI_STATE_CHANGED"

    .line 1136
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x3

    if-eqz v0, :cond_1

    const/4 p1, 0x4

    const-string/jumbo v0, "wifi_state"

    .line 1137
    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    if-ne p1, v1, :cond_0

    .line 1140
    iget-object p2, p0, Lcom/android/settingslib/wifi/WifiTracker$2;->this$0:Lcom/android/settingslib/wifi/WifiTracker;

    const-string/jumbo v0, "wifi"

    invoke-static {p2, v0}, Lcom/android/settingslib/wifi/WifiTracker;->access$300(Lcom/android/settingslib/wifi/WifiTracker;Ljava/lang/String;)V

    .line 1142
    :cond_0
    iget-object p0, p0, Lcom/android/settingslib/wifi/WifiTracker$2;->this$0:Lcom/android/settingslib/wifi/WifiTracker;

    invoke-static {p0, p1}, Lcom/android/settingslib/wifi/WifiTracker;->access$400(Lcom/android/settingslib/wifi/WifiTracker;I)V

    goto/16 :goto_2

    :cond_1
    const-string v0, "android.net.wifi.SCAN_RESULTS"

    .line 1143
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x1

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-eqz v0, :cond_3

    .line 1144
    iget-object p1, p0, Lcom/android/settingslib/wifi/WifiTracker$2;->this$0:Lcom/android/settingslib/wifi/WifiTracker;

    invoke-static {p1, v4}, Lcom/android/settingslib/wifi/WifiTracker;->access$502(Lcom/android/settingslib/wifi/WifiTracker;Z)Z

    const-string p1, "isPartialScan"

    .line 1145
    invoke-virtual {p2, p1, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 1146
    iget-object p1, p0, Lcom/android/settingslib/wifi/WifiTracker$2;->this$0:Lcom/android/settingslib/wifi/WifiTracker;

    invoke-static {p1, v4}, Lcom/android/settingslib/wifi/WifiTracker;->access$602(Lcom/android/settingslib/wifi/WifiTracker;Z)Z

    goto :goto_0

    .line 1148
    :cond_2
    iget-object p1, p0, Lcom/android/settingslib/wifi/WifiTracker$2;->this$0:Lcom/android/settingslib/wifi/WifiTracker;

    const-string v0, "resultsUpdated"

    .line 1149
    invoke-virtual {p2, v0, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p2

    .line 1148
    invoke-static {p1, p2}, Lcom/android/settingslib/wifi/WifiTracker;->access$602(Lcom/android/settingslib/wifi/WifiTracker;Z)Z

    .line 1151
    :goto_0
    iget-object p1, p0, Lcom/android/settingslib/wifi/WifiTracker$2;->this$0:Lcom/android/settingslib/wifi/WifiTracker;

    invoke-static {p1}, Lcom/android/settingslib/wifi/WifiTracker;->access$700(Lcom/android/settingslib/wifi/WifiTracker;)Lcom/android/settingslib/wifi/WifiTracker$WifiListenerExecutor;

    move-result-object p1

    invoke-virtual {p1, v3}, Lcom/android/settingslib/wifi/WifiTracker$WifiListenerExecutor;->onScanStateChange(I)V

    .line 1152
    iget-object p0, p0, Lcom/android/settingslib/wifi/WifiTracker$2;->this$0:Lcom/android/settingslib/wifi/WifiTracker;

    invoke-static {p0}, Lcom/android/settingslib/wifi/WifiTracker;->access$600(Lcom/android/settingslib/wifi/WifiTracker;)Z

    move-result p1

    const-string p2, "scan"

    invoke-static {p0, p2, p1}, Lcom/android/settingslib/wifi/WifiTracker;->access$800(Lcom/android/settingslib/wifi/WifiTracker;Ljava/lang/String;Z)V

    goto/16 :goto_2

    :cond_3
    const-string v0, "android.net.wifi.CONFIGURED_NETWORKS_CHANGE"

    .line 1153
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1154
    iget-object p1, p0, Lcom/android/settingslib/wifi/WifiTracker$2;->this$0:Lcom/android/settingslib/wifi/WifiTracker;

    invoke-static {p1}, Lcom/android/settingslib/wifi/WifiTracker;->access$700(Lcom/android/settingslib/wifi/WifiTracker;)Lcom/android/settingslib/wifi/WifiTracker$WifiListenerExecutor;

    move-result-object p1

    const-string/jumbo v0, "wifiConfiguration"

    .line 1155
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    const-string v1, "multipleChanges"

    .line 1156
    invoke-virtual {p2, v1, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    const-string v2, "changeReason"

    .line 1157
    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    .line 1154
    invoke-virtual {p1, v0, v1, p2}, Lcom/android/settingslib/wifi/WifiTracker$WifiListenerExecutor;->onConfiguredNetworksChanged(Landroid/net/wifi/WifiConfiguration;ZI)V

    .line 1159
    iget-object p0, p0, Lcom/android/settingslib/wifi/WifiTracker$2;->this$0:Lcom/android/settingslib/wifi/WifiTracker;

    const-string p1, "config"

    invoke-static {p0, p1}, Lcom/android/settingslib/wifi/WifiTracker;->access$300(Lcom/android/settingslib/wifi/WifiTracker;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_4
    const-string v0, "android.net.wifi.LINK_CONFIGURATION_CHANGED"

    .line 1160
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1161
    iget-object p1, p0, Lcom/android/settingslib/wifi/WifiTracker$2;->this$0:Lcom/android/settingslib/wifi/WifiTracker;

    .line 1162
    invoke-static {p1}, Lcom/android/settingslib/wifi/WifiTracker;->access$1000(Lcom/android/settingslib/wifi/WifiTracker;)Landroid/net/ConnectivityManager;

    move-result-object p1

    iget-object p2, p0, Lcom/android/settingslib/wifi/WifiTracker$2;->this$0:Lcom/android/settingslib/wifi/WifiTracker;

    invoke-static {p2}, Lcom/android/settingslib/wifi/WifiTracker;->access$900(Lcom/android/settingslib/wifi/WifiTracker;)Landroid/net/wifi/WifiManager;

    move-result-object p2

    invoke-virtual {p2}, Landroid/net/wifi/WifiManager;->getCurrentNetwork()Landroid/net/Network;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/net/ConnectivityManager;->getNetworkInfo(Landroid/net/Network;)Landroid/net/NetworkInfo;

    move-result-object p1

    .line 1163
    iget-object p2, p0, Lcom/android/settingslib/wifi/WifiTracker$2;->this$0:Lcom/android/settingslib/wifi/WifiTracker;

    invoke-static {p2, p1}, Lcom/android/settingslib/wifi/WifiTracker;->access$1100(Lcom/android/settingslib/wifi/WifiTracker;Landroid/net/NetworkInfo;)Z

    .line 1164
    iget-object p0, p0, Lcom/android/settingslib/wifi/WifiTracker$2;->this$0:Lcom/android/settingslib/wifi/WifiTracker;

    invoke-static {p0}, Lcom/android/settingslib/wifi/WifiTracker;->access$700(Lcom/android/settingslib/wifi/WifiTracker;)Lcom/android/settingslib/wifi/WifiTracker$WifiListenerExecutor;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/settingslib/wifi/WifiTracker$WifiListenerExecutor;->onIpMacInfoUpdated()V

    goto/16 :goto_2

    :cond_5
    const-string v0, "android.net.wifi.STATE_CHANGE"

    .line 1165
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v3, "WifiTracker"

    if-eqz v0, :cond_8

    const-string p1, "networkInfo"

    .line 1168
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/net/NetworkInfo;

    .line 1169
    iget-object p2, p0, Lcom/android/settingslib/wifi/WifiTracker$2;->this$0:Lcom/android/settingslib/wifi/WifiTracker;

    invoke-static {p2, p1}, Lcom/android/settingslib/wifi/WifiTracker;->access$1100(Lcom/android/settingslib/wifi/WifiTracker;Landroid/net/NetworkInfo;)Z

    move-result p2

    if-nez p2, :cond_7

    .line 1171
    iget-object p2, p0, Lcom/android/settingslib/wifi/WifiTracker$2;->this$0:Lcom/android/settingslib/wifi/WifiTracker;

    invoke-static {p2}, Lcom/android/settingslib/wifi/WifiTracker;->access$1200(Lcom/android/settingslib/wifi/WifiTracker;)Landroid/net/NetworkInfo$State;

    move-result-object p2

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v0

    if-eq p2, v0, :cond_6

    .line 1172
    iget-object p2, p0, Lcom/android/settingslib/wifi/WifiTracker$2;->this$0:Lcom/android/settingslib/wifi/WifiTracker;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "network-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/android/settingslib/wifi/WifiTracker;->access$300(Lcom/android/settingslib/wifi/WifiTracker;Ljava/lang/String;)V

    goto :goto_1

    .line 1173
    :cond_6
    invoke-static {}, Lcom/android/settingslib/wifi/WifiTracker;->access$1300()Z

    move-result p2

    if-eqz p2, :cond_7

    .line 1174
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "skip to update list, state:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v3, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1177
    :cond_7
    :goto_1
    iget-object p2, p0, Lcom/android/settingslib/wifi/WifiTracker$2;->this$0:Lcom/android/settingslib/wifi/WifiTracker;

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/android/settingslib/wifi/WifiTracker;->access$1202(Lcom/android/settingslib/wifi/WifiTracker;Landroid/net/NetworkInfo$State;)Landroid/net/NetworkInfo$State;

    .line 1178
    iget-object p0, p0, Lcom/android/settingslib/wifi/WifiTracker$2;->this$0:Lcom/android/settingslib/wifi/WifiTracker;

    invoke-static {p0}, Lcom/android/settingslib/wifi/WifiTracker;->access$700(Lcom/android/settingslib/wifi/WifiTracker;)Lcom/android/settingslib/wifi/WifiTracker$WifiListenerExecutor;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/settingslib/wifi/WifiTracker$WifiListenerExecutor;->onIpMacInfoUpdated()V

    goto/16 :goto_2

    :cond_8
    const-string v0, "android.net.wifi.RSSI_CHANGED"

    .line 1179
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1180
    iget-object p1, p0, Lcom/android/settingslib/wifi/WifiTracker$2;->this$0:Lcom/android/settingslib/wifi/WifiTracker;

    .line 1181
    invoke-static {p1}, Lcom/android/settingslib/wifi/WifiTracker;->access$1000(Lcom/android/settingslib/wifi/WifiTracker;)Landroid/net/ConnectivityManager;

    move-result-object p1

    iget-object p2, p0, Lcom/android/settingslib/wifi/WifiTracker$2;->this$0:Lcom/android/settingslib/wifi/WifiTracker;

    invoke-static {p2}, Lcom/android/settingslib/wifi/WifiTracker;->access$900(Lcom/android/settingslib/wifi/WifiTracker;)Landroid/net/wifi/WifiManager;

    move-result-object p2

    invoke-virtual {p2}, Landroid/net/wifi/WifiManager;->getCurrentNetwork()Landroid/net/Network;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/net/ConnectivityManager;->getNetworkInfo(Landroid/net/Network;)Landroid/net/NetworkInfo;

    move-result-object p1

    .line 1182
    iget-object p0, p0, Lcom/android/settingslib/wifi/WifiTracker$2;->this$0:Lcom/android/settingslib/wifi/WifiTracker;

    invoke-static {p0, p1}, Lcom/android/settingslib/wifi/WifiTracker;->access$1100(Lcom/android/settingslib/wifi/WifiTracker;Landroid/net/NetworkInfo;)Z

    goto/16 :goto_2

    :cond_9
    const-string v0, "com.samsung.android.net.wifi.WECHAT_AP_LIST"

    .line 1183
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1184
    invoke-static {}, Lcom/android/settingslib/wifi/WifiTracker;->access$1300()Z

    move-result p1

    if-eqz p1, :cond_a

    const-string p1, "onReceive, ACTION_AVAILABLE_WECHAT_AP"

    invoke-static {v3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1185
    :cond_a
    iget-object p1, p0, Lcom/android/settingslib/wifi/WifiTracker$2;->this$0:Lcom/android/settingslib/wifi/WifiTracker;

    invoke-static {p1}, Lcom/android/settingslib/wifi/WifiTracker;->access$1400(Lcom/android/settingslib/wifi/WifiTracker;)Lcom/samsung/android/settingslib/wifi/WeChatWifiManager;

    move-result-object p1

    if-nez p1, :cond_b

    const-string p0, "WeChatWifiManager is null!!!"

    .line 1186
    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_b
    const-string/jumbo p1, "ssid"

    .line 1190
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    const-string v0, "bssid"

    .line 1191
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    const-string/jumbo v1, "storename"

    .line 1192
    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p2

    .line 1194
    iget-object p0, p0, Lcom/android/settingslib/wifi/WifiTracker$2;->this$0:Lcom/android/settingslib/wifi/WifiTracker;

    invoke-static {p0}, Lcom/android/settingslib/wifi/WifiTracker;->access$1400(Lcom/android/settingslib/wifi/WifiTracker;)Lcom/samsung/android/settingslib/wifi/WeChatWifiManager;

    move-result-object p0

    invoke-virtual {p0, p1, v0, p2}, Lcom/samsung/android/settingslib/wifi/WeChatWifiManager;->setWeChatAccessPoint(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)Z

    goto :goto_2

    :cond_c
    const-string v0, "com.samsung.android.net.wifi.WECHAT_ERRORCODE"

    .line 1195
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    const-string p1, "errorcode"

    .line 1196
    invoke-virtual {p2, p1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 1197
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onReceive, ACTION_WECHAT_ERROR errorCode: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v3, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1198
    iget-object p2, p0, Lcom/android/settingslib/wifi/WifiTracker$2;->this$0:Lcom/android/settingslib/wifi/WifiTracker;

    invoke-static {p2}, Lcom/android/settingslib/wifi/WifiTracker;->access$1400(Lcom/android/settingslib/wifi/WifiTracker;)Lcom/samsung/android/settingslib/wifi/WeChatWifiManager;

    move-result-object p2

    if-nez p2, :cond_d

    return-void

    :cond_d
    if-eq p1, v1, :cond_e

    if-ne p1, v2, :cond_12

    .line 1203
    :cond_e
    iget-object p1, p0, Lcom/android/settingslib/wifi/WifiTracker$2;->this$0:Lcom/android/settingslib/wifi/WifiTracker;

    invoke-static {p1}, Lcom/android/settingslib/wifi/WifiTracker;->access$1400(Lcom/android/settingslib/wifi/WifiTracker;)Lcom/samsung/android/settingslib/wifi/WeChatWifiManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/settingslib/wifi/WeChatWifiManager;->clearAll()V

    .line 1204
    iget-object p0, p0, Lcom/android/settingslib/wifi/WifiTracker$2;->this$0:Lcom/android/settingslib/wifi/WifiTracker;

    invoke-static {p0}, Lcom/android/settingslib/wifi/WifiTracker;->access$1500(Lcom/android/settingslib/wifi/WifiTracker;)V

    goto :goto_2

    :cond_f
    const-string p2, "com.samsung.android.net.wifi.WECHAT_LOGOUT"

    .line 1206
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_12

    .line 1207
    invoke-static {}, Lcom/android/settingslib/wifi/WifiTracker;->access$1300()Z

    move-result p1

    if-eqz p1, :cond_10

    const-string p1, "onReceive, ACTION_WECHAT_LOGOUT"

    invoke-static {v3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1208
    :cond_10
    iget-object p1, p0, Lcom/android/settingslib/wifi/WifiTracker$2;->this$0:Lcom/android/settingslib/wifi/WifiTracker;

    invoke-static {p1}, Lcom/android/settingslib/wifi/WifiTracker;->access$1400(Lcom/android/settingslib/wifi/WifiTracker;)Lcom/samsung/android/settingslib/wifi/WeChatWifiManager;

    move-result-object p1

    if-nez p1, :cond_11

    return-void

    .line 1212
    :cond_11
    iget-object p1, p0, Lcom/android/settingslib/wifi/WifiTracker$2;->this$0:Lcom/android/settingslib/wifi/WifiTracker;

    invoke-static {p1}, Lcom/android/settingslib/wifi/WifiTracker;->access$1400(Lcom/android/settingslib/wifi/WifiTracker;)Lcom/samsung/android/settingslib/wifi/WeChatWifiManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/settingslib/wifi/WeChatWifiManager;->clearAll()V

    .line 1213
    iget-object p0, p0, Lcom/android/settingslib/wifi/WifiTracker$2;->this$0:Lcom/android/settingslib/wifi/WifiTracker;

    invoke-static {p0}, Lcom/android/settingslib/wifi/WifiTracker;->access$1500(Lcom/android/settingslib/wifi/WifiTracker;)V

    :cond_12
    :goto_2
    return-void
.end method
