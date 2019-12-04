.class public Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;
.super Ljava/lang/Object;
.source "HotspotTile.java"

# interfaces
.implements Lcom/android/systemui/plugins/qs/DetailAdapter;
.implements Lcom/android/systemui/qs/QSDetailItems$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/tiles/HotspotTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "HotSpotDetailAdapter"
.end annotation


# instance fields
.field private mApConnectionMode:Ljava/lang/String;

.field private mApLayout:Landroid/widget/LinearLayout;

.field private mApname:Ljava/lang/String;

.field private mConnectedDevices:[Ljava/lang/String;

.field private mConnectedListContainer:Landroid/view/View;

.field private mConnectionMode:Landroid/widget/TextView;

.field private mItems:Lcom/android/systemui/qs/QSDetailItems;

.field private mMobileApName:Landroid/widget/TextView;

.field private mPassWord:Ljava/lang/String;

.field private mPassWordLayout:Landroid/widget/LinearLayout;

.field private mPassword:Landroid/widget/TextView;

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field final synthetic this$0:Lcom/android/systemui/qs/tiles/HotspotTile;


# direct methods
.method protected constructor <init>(Lcom/android/systemui/qs/tiles/HotspotTile;)V
    .locals 0

    .line 948
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/HotspotTile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private checkWifiMobileApStatus()V
    .locals 2

    .line 1172
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v0

    .line 1173
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    .line 1188
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0xd

    if-eq v0, v1, :cond_0

    const/16 v1, 0xc

    if-ne v0, v1, :cond_1

    .line 1191
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiSharingEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1192
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/HotspotTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/HotspotTile;->access$6800(Lcom/android/systemui/qs/tiles/HotspotTile;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Wifi Sharing disabled, so Disable Wifi when both were ON"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1193
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    :cond_1
    return-void
.end method

.method private getAutoCompleteColor(Landroid/content/Context;)I
    .locals 2

    const/4 p0, 0x1

    new-array p0, p0, [I

    const/4 v0, 0x0

    const v1, 0x1010434

    aput v1, p0, v0

    .line 1207
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object p0

    const p1, 0xff00ff

    .line 1208
    invoke-virtual {p0, v0, p1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p1

    .line 1209
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    return p1
.end method

.method private getRandomAlphabet(IJ)Ljava/lang/String;
    .locals 3

    .line 1125
    new-instance p0, Ljava/lang/String;

    const-string v0, "abcdefghijklmnopqrstuvwxyz"

    invoke-direct {p0, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 1126
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const-wide/16 v1, 0x0

    cmp-long v1, p2, v1

    if-nez v1, :cond_0

    .line 1128
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p2

    .line 1129
    :cond_0
    new-instance v1, Ljava/util/Random;

    invoke-direct {v1, p2, p3}, Ljava/util/Random;-><init>(J)V

    const/4 p2, 0x0

    const-string p3, ""

    :goto_0
    if-ge p2, p1, :cond_1

    .line 1132
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/util/Random;->nextInt(I)I

    move-result p3

    invoke-virtual {p0, p3}, Ljava/lang/String;->charAt(I)C

    move-result p3

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    return-object p3
.end method

.method private getRandomDigits(IJ)Ljava/lang/String;
    .locals 3

    if-nez p1, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    const-wide/16 v0, 0x0

    cmp-long p0, p2, v0

    if-nez p0, :cond_1

    .line 1152
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p2

    :cond_1
    const-wide/16 v0, 0x1

    cmp-long p0, p2, v0

    if-nez p0, :cond_2

    .line 1154
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p2

    add-long/2addr p2, v0

    .line 1155
    :cond_2
    new-instance p0, Ljava/util/Random;

    invoke-direct {p0, p2, p3}, Ljava/util/Random;-><init>(J)V

    const/16 p2, 0xa

    const/4 p3, 0x1

    move v0, p2

    move p2, p3

    :goto_0
    if-ge p2, p1, :cond_3

    mul-int/lit8 v0, v0, 0xa

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 1159
    :cond_3
    sget-object p2, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v1, p3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string p1, "%%0%dd"

    invoke-static {p2, p1, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-array p2, p3, [Ljava/lang/Object;

    sub-int/2addr v0, p3

    .line 1160
    invoke-virtual {p0, v0}, Ljava/util/Random;->nextInt(I)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, p2, v2

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getRandomSymbol(IJ)Ljava/lang/String;
    .locals 3

    .line 1137
    new-instance p0, Ljava/lang/String;

    const-string v0, "!@#$/^&*()"

    invoke-direct {p0, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 1138
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const-wide/16 v1, 0x0

    cmp-long v1, p2, v1

    if-nez v1, :cond_0

    .line 1140
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p2

    .line 1141
    :cond_0
    new-instance v1, Ljava/util/Random;

    invoke-direct {v1, p2, p3}, Ljava/util/Random;-><init>(J)V

    const/4 p2, 0x0

    const-string p3, ""

    :goto_0
    if-ge p2, p1, :cond_1

    .line 1144
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/util/Random;->nextInt(I)I

    move-result p3

    invoke-virtual {p0, p3}, Ljava/lang/String;->charAt(I)C

    move-result p3

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    return-object p3
.end method

.method private getSpannableString(Ljava/lang/CharSequence;II)Ljava/lang/CharSequence;
    .locals 3

    .line 1199
    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 1200
    new-instance p1, Landroid/text/style/TextAppearanceSpan;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/HotspotTile;

    invoke-static {v1}, Lcom/android/systemui/qs/tiles/HotspotTile;->access$6900(Lcom/android/systemui/qs/tiles/HotspotTile;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x10301b3

    invoke-direct {p1, v1, v2}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0}, Landroid/text/SpannableString;->length()I

    move-result v1

    const/16 v2, 0x21

    invoke-virtual {v0, p1, p2, v1, v2}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 1201
    new-instance p1, Landroid/text/style/ForegroundColorSpan;

    if-nez p3, :cond_0

    iget-object p3, p0, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/HotspotTile;

    invoke-static {p3}, Lcom/android/systemui/qs/tiles/HotspotTile;->access$7000(Lcom/android/systemui/qs/tiles/HotspotTile;)Landroid/content/Context;

    move-result-object p3

    invoke-direct {p0, p3}, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;->getAutoCompleteColor(Landroid/content/Context;)I

    move-result p3

    :cond_0
    invoke-direct {p1, p3}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v0}, Landroid/text/SpannableString;->length()I

    move-result p0

    invoke-virtual {v0, p1, p2, p0, v2}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    return-object v0
.end method

.method private isWifiSharingEnabled()Z
    .locals 2

    .line 1164
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/HotspotTile;

    invoke-static {p0}, Lcom/android/systemui/qs/tiles/HotspotTile;->access$6700(Lcom/android/systemui/qs/tiles/HotspotTile;)Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v0, 0x0

    const-string/jumbo v1, "wifi_ap_wifi_sharing"

    invoke-static {p0, v1, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 v1, 0x1

    if-ne p0, v1, :cond_0

    return v1

    :cond_0
    return v0
.end method

.method private updateItems()V
    .locals 9

    .line 1225
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/HotspotTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/HotspotTile;->access$7100(Lcom/android/systemui/qs/tiles/HotspotTile;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "updateItems"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1226
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;->mItems:Lcom/android/systemui/qs/QSDetailItems;

    if-nez v0, :cond_0

    return-void

    .line 1228
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;->mConnectedDevices:[Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 1229
    array-length v0, v0

    .line 1230
    new-array v2, v0, [Lcom/android/systemui/qs/QSDetailItems$Item;

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v0, :cond_2

    .line 1232
    iget-object v5, p0, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;->mConnectedDevices:[Ljava/lang/String;

    aget-object v5, v5, v4

    .line 1233
    new-instance v6, Lcom/android/systemui/qs/QSDetailItems$Item;

    invoke-direct {v6}, Lcom/android/systemui/qs/QSDetailItems$Item;-><init>()V

    .line 1234
    iget-object v7, p0, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/HotspotTile;

    invoke-static {v7}, Lcom/android/systemui/qs/tiles/HotspotTile;->access$7200(Lcom/android/systemui/qs/tiles/HotspotTile;)Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    iget-object v8, p0, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/HotspotTile;

    invoke-static {v8}, Lcom/android/systemui/qs/tiles/HotspotTile;->access$5500(Lcom/android/systemui/qs/tiles/HotspotTile;)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    iput-object v7, v6, Lcom/android/systemui/qs/QSDetailItems$Item;->overlay:Landroid/graphics/drawable/Drawable;

    .line 1235
    iget-object v7, p0, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/HotspotTile;

    invoke-static {v7}, Lcom/android/systemui/qs/tiles/HotspotTile;->access$7300(Lcom/android/systemui/qs/tiles/HotspotTile;)Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/android/systemui/R$color;->qs_detail_item_device_icon_tint_color:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    iput v7, v6, Lcom/android/systemui/qs/QSDetailItems$Item;->tint:I

    const/4 v7, 0x1

    .line 1236
    iput-boolean v7, v6, Lcom/android/systemui/qs/QSDetailItems$Item;->iconBackground:Z

    const-string v7, "(null)"

    .line 1237
    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1238
    iget-object v5, p0, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/HotspotTile;

    invoke-static {v5}, Lcom/android/systemui/qs/tiles/HotspotTile;->access$7400(Lcom/android/systemui/qs/tiles/HotspotTile;)Landroid/content/Context;

    move-result-object v5

    sget v7, Lcom/android/systemui/R$string;->mobile_hotspot_detail_connected_device:I

    invoke-virtual {v5, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 1240
    :cond_1
    iput-object v5, v6, Lcom/android/systemui/qs/QSDetailItems$Item;->line1:Ljava/lang/CharSequence;

    .line 1241
    iput-object v1, v6, Lcom/android/systemui/qs/QSDetailItems$Item;->line2:Ljava/lang/CharSequence;

    .line 1242
    iput-boolean v3, v6, Lcom/android/systemui/qs/QSDetailItems$Item;->isClickable:Z

    .line 1243
    aput-object v6, v2, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    move-object v1, v2

    .line 1246
    :cond_3
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;->mItems:Lcom/android/systemui/qs/QSDetailItems;

    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/QSDetailItems;->setItems([Lcom/android/systemui/qs/QSDetailItems$Item;)V

    return-void
.end method


# virtual methods
.method public createDetailView(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .line 1043
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/HotspotTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/HotspotTile;->access$5100(Lcom/android/systemui/qs/tiles/HotspotTile;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "createDetailView convertView="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    move p2, v2

    :goto_0
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, " mState.value "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/HotspotTile;

    invoke-static {p2}, Lcom/android/systemui/qs/tiles/HotspotTile;->access$5200(Lcom/android/systemui/qs/tiles/HotspotTile;)Lcom/android/systemui/plugins/qs/QSTile$State;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    iget-boolean p2, p2, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1044
    iget-object p2, p0, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-nez p2, :cond_1

    .line 1045
    iget-object p2, p0, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/HotspotTile;

    invoke-static {p2}, Lcom/android/systemui/qs/tiles/HotspotTile;->access$5300(Lcom/android/systemui/qs/tiles/HotspotTile;)Landroid/content/Context;

    move-result-object p2

    const-string/jumbo v0, "wifi"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/net/wifi/WifiManager;

    iput-object p2, p0, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 1047
    :cond_1
    iget-object p2, p0, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/HotspotTile;

    invoke-static {p2}, Lcom/android/systemui/qs/tiles/HotspotTile;->access$5400(Lcom/android/systemui/qs/tiles/HotspotTile;)Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Lcom/android/systemui/R$layout;->qs_detail_hotspot:I

    invoke-virtual {p2, v0, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 1048
    sget p3, Lcom/android/systemui/R$id;->ap_layout:I

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/LinearLayout;

    iput-object p3, p0, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;->mApLayout:Landroid/widget/LinearLayout;

    .line 1049
    sget p3, Lcom/android/systemui/R$id;->password_layout:I

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/LinearLayout;

    iput-object p3, p0, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;->mPassWordLayout:Landroid/widget/LinearLayout;

    .line 1050
    sget p3, Lcom/android/systemui/R$id;->ap_name:I

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iput-object p3, p0, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;->mMobileApName:Landroid/widget/TextView;

    .line 1052
    sget p3, Lcom/android/systemui/R$id;->connected_list_container:I

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    iput-object p3, p0, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;->mConnectedListContainer:Landroid/view/View;

    .line 1054
    sget p3, Lcom/android/systemui/R$id;->ap_password:I

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iput-object p3, p0, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;->mPassword:Landroid/widget/TextView;

    .line 1055
    sget p3, Lcom/android/systemui/R$id;->connected_devices:I

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/view/ViewGroup;

    const/4 v0, 0x0

    .line 1056
    invoke-static {p1, v0, p3}, Lcom/android/systemui/qs/QSDetailItems;->convertOrInflate(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;)Lcom/android/systemui/qs/QSDetailItems;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;->mItems:Lcom/android/systemui/qs/QSDetailItems;

    .line 1057
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;->mItems:Lcom/android/systemui/qs/QSDetailItems;

    const-string v0, "HotSpot"

    invoke-virtual {p1, v0}, Lcom/android/systemui/qs/QSDetailItems;->setTagSuffix(Ljava/lang/String;)V

    .line 1058
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;->mItems:Lcom/android/systemui/qs/QSDetailItems;

    invoke-virtual {p1, p0}, Lcom/android/systemui/qs/QSDetailItems;->setCallback(Lcom/android/systemui/qs/QSDetailItems$Callback;)V

    .line 1060
    sget p1, Lcom/android/systemui/R$id;->ap_icon:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    .line 1062
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/HotspotTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/HotspotTile;->access$5500(Lcom/android/systemui/qs/tiles/HotspotTile;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1063
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/HotspotTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/HotspotTile;->access$5600(Lcom/android/systemui/qs/tiles/HotspotTile;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$color;->qs_detail_item_device_icon_tint_color:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 1065
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;->mItems:Lcom/android/systemui/qs/QSDetailItems;

    invoke-virtual {p3, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1067
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;->updateHotSpotApInfo()V

    .line 1068
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;->updateConnectedDeviceList()V

    return-object p2
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x460

    return p0
.end method

.method public getSettingsIntent()Landroid/content/Intent;
    .locals 1

    .line 970
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/HotspotTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/HotspotTile;->access$2800(Lcom/android/systemui/qs/tiles/HotspotTile;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 971
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/HotspotTile;

    invoke-static {p0}, Lcom/android/systemui/qs/tiles/HotspotTile;->access$2900(Lcom/android/systemui/qs/tiles/HotspotTile;)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    .line 966
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/HotspotTile;

    invoke-static {p0}, Lcom/android/systemui/qs/tiles/HotspotTile;->access$2700(Lcom/android/systemui/qs/tiles/HotspotTile;)Landroid/content/Context;

    move-result-object p0

    sget v0, Lcom/android/systemui/R$string;->mobile_hotspot_detail_title:I

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/HotspotTile;->access$2600(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getToggleEnabled()Z
    .locals 3

    .line 981
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/HotspotTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/HotspotTile;->access$3100(Lcom/android/systemui/qs/tiles/HotspotTile;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " getToggleEnabled = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/HotspotTile;

    invoke-static {v2}, Lcom/android/systemui/qs/tiles/HotspotTile;->access$3200(Lcom/android/systemui/qs/tiles/HotspotTile;)Lcom/android/systemui/plugins/qs/QSTile$State;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    iget-boolean v2, v2, Lcom/android/systemui/plugins/qs/QSTile$State;->isTransient:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 982
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/HotspotTile;

    invoke-static {p0}, Lcom/android/systemui/qs/tiles/HotspotTile;->access$3300(Lcom/android/systemui/qs/tiles/HotspotTile;)Lcom/android/systemui/plugins/qs/QSTile$State;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    iget-boolean p0, p0, Lcom/android/systemui/plugins/qs/QSTile$State;->isTransient:Z

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getToggleState()Ljava/lang/Boolean;
    .locals 0

    .line 976
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/HotspotTile;

    invoke-static {p0}, Lcom/android/systemui/qs/tiles/HotspotTile;->access$3000(Lcom/android/systemui/qs/tiles/HotspotTile;)Lcom/android/systemui/plugins/qs/QSTile$State;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    iget-boolean p0, p0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public synthetic lambda$setToggleState$0$HotspotTile$HotSpotDetailAdapter()V
    .locals 1

    .line 1013
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;->getToggleState()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;->setToggleState(Z)V

    return-void
.end method

.method public onDetailItemClick(Lcom/android/systemui/qs/QSDetailItems$Item;)V
    .locals 0

    return-void
.end method

.method public onDetailItemDisconnect(Lcom/android/systemui/qs/QSDetailItems$Item;)V
    .locals 0

    return-void
.end method

.method public setItemsVisible(Z)V
    .locals 0

    .line 1220
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;->mConnectedListContainer:Landroid/view/View;

    if-eqz p0, :cond_1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    .line 1221
    :goto_0
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public setToggleState(Z)V
    .locals 3

    .line 987
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/HotspotTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/HotspotTile;->access$3400(Lcom/android/systemui/qs/tiles/HotspotTile;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/systemui/util/DeviceState;->isSimReady()Z

    move-result v0

    if-nez v0, :cond_0

    .line 988
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/HotspotTile;

    invoke-static {p1}, Lcom/android/systemui/qs/tiles/HotspotTile;->access$3500(Lcom/android/systemui/qs/tiles/HotspotTile;)V

    .line 989
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/HotspotTile;

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;->getToggleState()Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    invoke-virtual {p1, p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->fireToggleStateChanged(Z)V

    return-void

    .line 993
    :cond_0
    const-class v0, Lcom/android/systemui/KnoxStateMonitor;

    .line 994
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/KnoxStateMonitor;

    invoke-virtual {v0}, Lcom/android/systemui/KnoxStateMonitor;->isWifiHotspotTileBlocked()Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/HotspotTile;

    .line 995
    invoke-static {v0}, Lcom/android/systemui/qs/tiles/HotspotTile;->access$3600(Lcom/android/systemui/qs/tiles/HotspotTile;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto/16 :goto_2

    .line 1001
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/HotspotTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/HotspotTile;->access$2800(Lcom/android/systemui/qs/tiles/HotspotTile;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1002
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/HotspotTile;

    invoke-static {p1}, Lcom/android/systemui/qs/tiles/HotspotTile;->access$3800(Lcom/android/systemui/qs/tiles/HotspotTile;)V

    .line 1003
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/HotspotTile;

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;->getToggleState()Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    invoke-virtual {p1, p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->fireToggleStateChanged(Z)V

    return-void

    .line 1007
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/HotspotTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/HotspotTile;->access$3900(Lcom/android/systemui/qs/tiles/HotspotTile;)Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/HotspotTile;

    .line 1008
    invoke-static {v0}, Lcom/android/systemui/qs/tiles/HotspotTile;->access$3900(Lcom/android/systemui/qs/tiles/HotspotTile;)Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->isSecure()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/HotspotTile;

    .line 1009
    invoke-static {v0}, Lcom/android/systemui/qs/tiles/HotspotTile;->access$4000(Lcom/android/systemui/qs/tiles/HotspotTile;)Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->canSkipBouncer()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/HotspotTile;

    .line 1010
    invoke-static {v0}, Lcom/android/systemui/qs/tiles/HotspotTile;->access$4100(Lcom/android/systemui/qs/tiles/HotspotTile;)Lcom/android/systemui/util/SettingsHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->isLockFunctionsEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1011
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/HotspotTile;

    invoke-static {p1}, Lcom/android/systemui/qs/tiles/HotspotTile;->access$4200(Lcom/android/systemui/qs/tiles/HotspotTile;)Lcom/android/systemui/qs/QSHost;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/systemui/qs/QSHost;->forceCollapsePanels()V

    .line 1012
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/HotspotTile;

    invoke-static {p1}, Lcom/android/systemui/qs/tiles/HotspotTile;->access$4300(Lcom/android/systemui/qs/tiles/HotspotTile;)Lcom/android/systemui/plugins/ActivityStarter;

    move-result-object p1

    new-instance v0, Lcom/android/systemui/qs/tiles/-$$Lambda$HotspotTile$HotSpotDetailAdapter$gR7DXgIPUoDCXHEARePN9TVzRXA;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/tiles/-$$Lambda$HotspotTile$HotSpotDetailAdapter$gR7DXgIPUoDCXHEARePN9TVzRXA;-><init>(Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;)V

    invoke-interface {p1, v0}, Lcom/android/systemui/plugins/ActivityStarter;->postQSRunnableDismissingKeyguard(Ljava/lang/Runnable;)V

    .line 1015
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/HotspotTile;

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;->getToggleState()Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    invoke-virtual {p1, p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->fireToggleStateChanged(Z)V

    return-void

    .line 1019
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/HotspotTile;

    const/4 v1, 0x0

    if-eqz p1, :cond_4

    invoke-static {}, Lcom/android/systemui/qs/tiles/HotspotTile;->access$4400()Ljava/lang/Object;

    move-result-object v2

    goto :goto_0

    :cond_4
    move-object v2, v1

    :goto_0
    invoke-static {v0, v2}, Lcom/android/systemui/qs/tiles/HotspotTile;->access$4500(Lcom/android/systemui/qs/tiles/HotspotTile;Ljava/lang/Object;)V

    .line 1021
    sget-boolean v0, Lcom/android/systemui/Rune;->QPANEL_IS_USA_POPUP:Z

    if-nez v0, :cond_5

    sget-boolean v0, Lcom/android/systemui/Rune;->QPANEL_IS_SBM_POPUP:Z

    if-eqz v0, :cond_6

    :cond_5
    if-eqz p1, :cond_6

    .line 1023
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/HotspotTile;

    invoke-static {p1}, Lcom/android/systemui/qs/tiles/HotspotTile;->access$4600(Lcom/android/systemui/qs/tiles/HotspotTile;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "send WIFIAP_ENABLE_WARNING for USA or SBM"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1024
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/HotspotTile;

    invoke-static {p0}, Lcom/android/systemui/qs/tiles/HotspotTile;->access$4700(Lcom/android/systemui/qs/tiles/HotspotTile;)V

    return-void

    .line 1027
    :cond_6
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/HotspotTile;

    invoke-static {v0, p1}, Lcom/android/systemui/qs/tiles/HotspotTile;->access$4800(Lcom/android/systemui/qs/tiles/HotspotTile;Z)V

    .line 1028
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/HotspotTile;

    invoke-static {p1}, Lcom/android/systemui/qs/tiles/HotspotTile;->access$4900(Lcom/android/systemui/qs/tiles/HotspotTile;)Lcom/android/systemui/plugins/qs/QSTile$State;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    iget-boolean p1, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;->mConnectedDevices:[Ljava/lang/String;

    if-eqz p1, :cond_7

    const/4 p1, 0x1

    goto :goto_1

    :cond_7
    const/4 p1, 0x0

    :goto_1
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;->setItemsVisible(Z)V

    .line 1030
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/HotspotTile;

    const-string/jumbo p1, "toggle"

    invoke-static {p0, p1, v1}, Lcom/android/systemui/qs/tiles/HotspotTile;->access$5000(Lcom/android/systemui/qs/tiles/HotspotTile;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 996
    :cond_8
    :goto_2
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/HotspotTile;

    invoke-static {p1}, Lcom/android/systemui/qs/tiles/HotspotTile;->access$3700(Lcom/android/systemui/qs/tiles/HotspotTile;)V

    .line 997
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/HotspotTile;

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;->getToggleState()Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    invoke-virtual {p1, p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->fireToggleStateChanged(Z)V

    return-void
.end method

.method public updateConnectedDeviceList()V
    .locals 2

    .line 1074
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/HotspotTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/HotspotTile;->access$1700(Lcom/android/systemui/qs/tiles/HotspotTile;)Lcom/android/systemui/statusbar/policy/HotspotController;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/HotspotController;->getConnectedDeviceList()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;->mConnectedDevices:[Ljava/lang/String;

    .line 1075
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;->updateItems()V

    .line 1076
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " hot updateConnectedDeviceList mConnectedDevices = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;->mConnectedDevices:[Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "hot"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1077
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/HotspotTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/HotspotTile;->access$5700(Lcom/android/systemui/qs/tiles/HotspotTile;)Lcom/android/systemui/plugins/qs/QSTile$State;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    iget-boolean v0, v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;->mConnectedDevices:[Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;->setItemsVisible(Z)V

    return-void
.end method

.method public updateHotSpotApInfo()V
    .locals 7

    .line 1082
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/HotspotTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/HotspotTile;->access$5800(Lcom/android/systemui/qs/tiles/HotspotTile;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "updateHotSpotApInfo"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1083
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-nez v0, :cond_0

    .line 1084
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/HotspotTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/HotspotTile;->access$5900(Lcom/android/systemui/qs/tiles/HotspotTile;)Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 1087
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 1088
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    .line 1089
    invoke-static {}, Lcom/android/systemui/qs/tiles/HotspotTile;->access$6000()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/HotspotTile;

    invoke-static {v2}, Lcom/android/systemui/qs/tiles/HotspotTile;->access$6100(Lcom/android/systemui/qs/tiles/HotspotTile;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mobileAp Name = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1090
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;->mMobileApName:Landroid/widget/TextView;

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz v1, :cond_6

    if-eqz v1, :cond_2

    .line 1091
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    goto/16 :goto_1

    :cond_2
    const-string v0, "\tUSER#DEFINED#PWD#\n"

    .line 1093
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1094
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/HotspotTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/HotspotTile;->access$6200(Lcom/android/systemui/qs/tiles/HotspotTile;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "wifi_ap_random_password"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    const-string v2, ""

    .line 1095
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_0

    .line 1100
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;->mPassword:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/HotspotTile;

    invoke-static {v2}, Lcom/android/systemui/qs/tiles/HotspotTile;->access$6400(Lcom/android/systemui/qs/tiles/HotspotTile;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 1096
    :cond_4
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x4

    const-wide/16 v3, 0x0

    invoke-direct {p0, v2, v3, v4}, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;->getRandomAlphabet(IJ)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x3

    const-wide/16 v5, 0x1

    invoke-direct {p0, v2, v5, v6}, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;->getRandomDigits(IJ)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x1

    invoke-direct {p0, v2, v3, v4}, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;->getRandomSymbol(IJ)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1097
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/HotspotTile;

    invoke-static {v2}, Lcom/android/systemui/qs/tiles/HotspotTile;->access$6300(Lcom/android/systemui/qs/tiles/HotspotTile;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2, v1, v0}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1098
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;->mPassword:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 1103
    :cond_5
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;->mPassword:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 1092
    :cond_6
    :goto_1
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;->mPassword:Landroid/widget/TextView;

    sget v1, Lcom/android/systemui/R$string;->assistance_app_setting_item_none:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 1106
    :goto_2
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;->mPassword:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 1107
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;->mPassword:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/HotspotTile;

    invoke-static {v3}, Lcom/android/systemui/qs/tiles/HotspotTile;->access$6500(Lcom/android/systemui/qs/tiles/HotspotTile;)Landroid/content/Context;

    move-result-object v3

    sget v4, Lcom/android/systemui/R$color;->qs_detail_secondary_text_color:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getColor(I)I

    move-result v3

    invoke-direct {p0, v1, v2, v3}, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;->getSpannableString(Ljava/lang/CharSequence;II)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1117
    :cond_7
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;->mMobileApName:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;->mApname:Ljava/lang/String;

    .line 1119
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;->mApLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;->mApname:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1120
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;->mPassword:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;->mPassWord:Ljava/lang/String;

    .line 1121
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;->mPassWordLayout:Landroid/widget/LinearLayout;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/HotspotTile;

    invoke-static {v2}, Lcom/android/systemui/qs/tiles/HotspotTile;->access$6600(Lcom/android/systemui/qs/tiles/HotspotTile;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/systemui/R$string;->mobile_hotspot_detail_password:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;->mPassWord:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method
