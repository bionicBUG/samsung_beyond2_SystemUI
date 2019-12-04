.class Lcom/samsung/android/settingslib/wifi/WeChatWifiManager$1;
.super Ljava/lang/Thread;
.source "WeChatWifiManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settingslib/wifi/WeChatWifiManager;->checkLogout(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settingslib/wifi/WeChatWifiManager;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/samsung/android/settingslib/wifi/WeChatWifiManager;Landroid/content/Context;)V
    .locals 0

    .line 77
    iput-object p1, p0, Lcom/samsung/android/settingslib/wifi/WeChatWifiManager$1;->this$0:Lcom/samsung/android/settingslib/wifi/WeChatWifiManager;

    iput-object p2, p0, Lcom/samsung/android/settingslib/wifi/WeChatWifiManager$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    const-string v0, "WeChatWifiManager"

    .line 80
    invoke-static {}, Lcom/samsung/android/settingslib/wifi/WeChatWifiManager;->access$000()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "wx7c913747c92bb95d"

    goto :goto_0

    :cond_0
    const-string v1, "wxc85693d064779676"

    :goto_0
    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const-string v1, "content://com.tencent.mm.sdk.comm.provider/getWifiList?appid=%s"

    .line 85
    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    const/4 v1, 0x0

    .line 89
    :try_start_0
    new-instance v3, Lorg/json/JSONArray;

    const-string v5, "[{\'ssid\':\'Logout\'}]"

    invoke-direct {v3, v5}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 90
    invoke-virtual {v3}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const-string v3, "checkLogout, JSONException"

    .line 92
    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    const/4 v3, 0x3

    new-array v9, v3, [Ljava/lang/String;

    const-string v5, "1"

    aput-object v5, v9, v4

    aput-object v1, v9, v2

    const/4 v1, 0x2

    aput-object v5, v9, v1

    .line 96
    iget-object v1, p0, Lcom/samsung/android/settingslib/wifi/WeChatWifiManager$1;->val$context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-nez v1, :cond_1

    const-string v1, "checkLogout, cursor is null"

    .line 98
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    iget-object p0, p0, Lcom/samsung/android/settingslib/wifi/WeChatWifiManager$1;->this$0:Lcom/samsung/android/settingslib/wifi/WeChatWifiManager;

    invoke-virtual {p0}, Lcom/samsung/android/settingslib/wifi/WeChatWifiManager;->clearAll()V

    return-void

    .line 103
    :cond_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 104
    invoke-interface {v1}, Landroid/database/Cursor;->getColumnCount()I

    move-result v5

    if-ne v5, v2, :cond_4

    const-string v5, "retCode"

    .line 105
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    if-ne v5, v3, :cond_3

    .line 107
    iget-object v3, p0, Lcom/samsung/android/settingslib/wifi/WeChatWifiManager$1;->this$0:Lcom/samsung/android/settingslib/wifi/WeChatWifiManager;

    invoke-virtual {v3}, Lcom/samsung/android/settingslib/wifi/WeChatWifiManager;->clearAll()V

    .line 109
    iget-object v3, p0, Lcom/samsung/android/settingslib/wifi/WeChatWifiManager$1;->this$0:Lcom/samsung/android/settingslib/wifi/WeChatWifiManager;

    invoke-static {v3}, Lcom/samsung/android/settingslib/wifi/WeChatWifiManager;->access$100(Lcom/samsung/android/settingslib/wifi/WeChatWifiManager;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string p0, "checkLogout, Broadcast is already sent."

    .line 110
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    return-void

    .line 115
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settingslib/wifi/WeChatWifiManager$1;->this$0:Lcom/samsung/android/settingslib/wifi/WeChatWifiManager;

    iget-object v3, p0, Lcom/samsung/android/settingslib/wifi/WeChatWifiManager$1;->val$context:Landroid/content/Context;

    invoke-static {v0, v3}, Lcom/samsung/android/settingslib/wifi/WeChatWifiManager;->access$200(Lcom/samsung/android/settingslib/wifi/WeChatWifiManager;Landroid/content/Context;)V

    .line 116
    iget-object p0, p0, Lcom/samsung/android/settingslib/wifi/WeChatWifiManager$1;->this$0:Lcom/samsung/android/settingslib/wifi/WeChatWifiManager;

    invoke-static {p0, v2}, Lcom/samsung/android/settingslib/wifi/WeChatWifiManager;->access$102(Lcom/samsung/android/settingslib/wifi/WeChatWifiManager;Z)Z

    goto :goto_2

    .line 118
    :cond_3
    iget-object p0, p0, Lcom/samsung/android/settingslib/wifi/WeChatWifiManager$1;->this$0:Lcom/samsung/android/settingslib/wifi/WeChatWifiManager;

    invoke-static {p0, v4}, Lcom/samsung/android/settingslib/wifi/WeChatWifiManager;->access$102(Lcom/samsung/android/settingslib/wifi/WeChatWifiManager;Z)Z

    .line 123
    :cond_4
    :goto_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    return-void
.end method
