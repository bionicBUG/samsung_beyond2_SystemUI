.class public Lcom/sec/android/diagmonagent/log/provider/DiagMonSDK;
.super Ljava/lang/Object;
.source "DiagMonSDK.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/diagmonagent/log/provider/DiagMonSDK$DiagMonHelper;
    }
.end annotation


# static fields
.field private static elp:Lcom/sec/android/diagmonagent/log/provider/DiagMonProvider;

.field private static instance:Lcom/sec/android/diagmonagent/log/provider/DiagMonSDK;

.field private static isEnableDefaultConfig:Z

.field private static isEnableUncaughtExceptionLogging:Z

.field private static mConfig:Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;

.field private static srObj:Landroid/os/Bundle;

.field private static final uri:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "content://com.sec.android.log.diagmonagent/"

    .line 16
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/android/diagmonagent/log/provider/DiagMonSDK;->uri:Landroid/net/Uri;

    const/4 v0, 0x0

    .line 20
    sput-object v0, Lcom/sec/android/diagmonagent/log/provider/DiagMonSDK;->mConfig:Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;

    const/4 v0, 0x0

    .line 24
    sput-boolean v0, Lcom/sec/android/diagmonagent/log/provider/DiagMonSDK;->isEnableUncaughtExceptionLogging:Z

    .line 25
    sput-boolean v0, Lcom/sec/android/diagmonagent/log/provider/DiagMonSDK;->isEnableDefaultConfig:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;
    .locals 1

    .line 15
    sget-object v0, Lcom/sec/android/diagmonagent/log/provider/DiagMonSDK;->mConfig:Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;

    return-object v0
.end method

.method static synthetic access$002(Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;)Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;
    .locals 0

    .line 15
    sput-object p0, Lcom/sec/android/diagmonagent/log/provider/DiagMonSDK;->mConfig:Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;

    return-object p0
.end method

.method static synthetic access$102(Lcom/sec/android/diagmonagent/log/provider/DiagMonSDK;)Lcom/sec/android/diagmonagent/log/provider/DiagMonSDK;
    .locals 0

    .line 15
    sput-object p0, Lcom/sec/android/diagmonagent/log/provider/DiagMonSDK;->instance:Lcom/sec/android/diagmonagent/log/provider/DiagMonSDK;

    return-object p0
.end method

.method static synthetic access$200()Lcom/sec/android/diagmonagent/log/provider/DiagMonProvider;
    .locals 1

    .line 15
    sget-object v0, Lcom/sec/android/diagmonagent/log/provider/DiagMonSDK;->elp:Lcom/sec/android/diagmonagent/log/provider/DiagMonProvider;

    return-object v0
.end method

.method static synthetic access$202(Lcom/sec/android/diagmonagent/log/provider/DiagMonProvider;)Lcom/sec/android/diagmonagent/log/provider/DiagMonProvider;
    .locals 0

    .line 15
    sput-object p0, Lcom/sec/android/diagmonagent/log/provider/DiagMonSDK;->elp:Lcom/sec/android/diagmonagent/log/provider/DiagMonProvider;

    return-object p0
.end method

.method static synthetic access$300()Landroid/os/Bundle;
    .locals 1

    .line 15
    sget-object v0, Lcom/sec/android/diagmonagent/log/provider/DiagMonSDK;->srObj:Landroid/os/Bundle;

    return-object v0
.end method

.method static synthetic access$302(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 0

    .line 15
    sput-object p0, Lcom/sec/android/diagmonagent/log/provider/DiagMonSDK;->srObj:Landroid/os/Bundle;

    return-object p0
.end method

.method static synthetic access$400(Landroid/content/Context;Lcom/sec/android/diagmonagent/log/provider/EventBuilder;)Z
    .locals 0

    .line 15
    invoke-static {p0, p1}, Lcom/sec/android/diagmonagent/log/provider/DiagMonSDK;->eventReportViaBR(Landroid/content/Context;Lcom/sec/android/diagmonagent/log/provider/EventBuilder;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$500()Z
    .locals 1

    .line 15
    sget-boolean v0, Lcom/sec/android/diagmonagent/log/provider/DiagMonSDK;->isEnableDefaultConfig:Z

    return v0
.end method

.method static synthetic access$600(Landroid/content/Context;Lcom/sec/android/diagmonagent/log/provider/EventBuilder;)Z
    .locals 0

    .line 15
    invoke-static {p0, p1}, Lcom/sec/android/diagmonagent/log/provider/DiagMonSDK;->eventReportViaCP(Landroid/content/Context;Lcom/sec/android/diagmonagent/log/provider/EventBuilder;)Z

    move-result p0

    return p0
.end method

.method private static eventReportViaBR(Landroid/content/Context;Lcom/sec/android/diagmonagent/log/provider/EventBuilder;)Z
    .locals 2

    .line 183
    sget-object v0, Lcom/sec/android/diagmonagent/log/provider/DiagMonSDK;->mConfig:Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;

    invoke-static {v0}, Lcom/sec/android/diagmonagent/log/provider/utils/Validator;->validateLegacyConfig(Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 184
    sget-object p0, Lcom/sec/android/diagmonagent/log/provider/utils/DiagMonUtil;->TAG:Ljava/lang/String;

    const-string p1, "Invalid DiagMonConfiguration"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 188
    :cond_0
    invoke-static {p1}, Lcom/sec/android/diagmonagent/log/provider/utils/Validator;->isValidLegacyEventBuilder(Lcom/sec/android/diagmonagent/log/provider/EventBuilder;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 189
    sget-object p0, Lcom/sec/android/diagmonagent/log/provider/utils/DiagMonUtil;->TAG:Ljava/lang/String;

    const-string p1, "Invalid EventBuilder"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 193
    :cond_1
    sget-object v0, Lcom/sec/android/diagmonagent/log/provider/utils/DiagMonUtil;->TAG:Ljava/lang/String;

    const-string v1, "Valid EventBuilder"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    sget-object v0, Lcom/sec/android/diagmonagent/log/provider/DiagMonSDK;->mConfig:Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;

    invoke-static {p0, v0, p1}, Lcom/sec/android/diagmonagent/log/provider/utils/DiagMonUtil;->makeEventobjAsIntent(Landroid/content/Context;Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;Lcom/sec/android/diagmonagent/log/provider/EventBuilder;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 195
    sget-object p0, Lcom/sec/android/diagmonagent/log/provider/utils/DiagMonUtil;->TAG:Ljava/lang/String;

    const-string p1, "Report your logs"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0
.end method

.method private static eventReportViaCP(Landroid/content/Context;Lcom/sec/android/diagmonagent/log/provider/EventBuilder;)Z
    .locals 4

    .line 143
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 144
    sget-object v0, Lcom/sec/android/diagmonagent/log/provider/DiagMonSDK;->mConfig:Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;

    invoke-static {p0, v0, p1}, Lcom/sec/android/diagmonagent/log/provider/utils/DiagMonUtil;->makeEventObjAsBundle(Landroid/content/Context;Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;Lcom/sec/android/diagmonagent/log/provider/EventBuilder;)Landroid/os/Bundle;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 147
    sget-object p0, Lcom/sec/android/diagmonagent/log/provider/utils/DiagMonUtil;->TAG:Ljava/lang/String;

    const-string p1, "No EventObject"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 151
    :cond_0
    sget-object v2, Lcom/sec/android/diagmonagent/log/provider/DiagMonSDK;->mConfig:Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;

    if-nez v2, :cond_1

    .line 152
    sget-object p0, Lcom/sec/android/diagmonagent/log/provider/utils/DiagMonUtil;->TAG:Ljava/lang/String;

    const-string p1, "No Configuration"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    sget-object p0, Lcom/sec/android/diagmonagent/log/provider/utils/DiagMonUtil;->TAG:Ljava/lang/String;

    const-string p1, "You have to set DiagMonConfiguration"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 157
    :cond_1
    invoke-virtual {v2}, Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;->getContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Lcom/sec/android/diagmonagent/log/provider/DiagMonSDK;->srObj:Landroid/os/Bundle;

    invoke-static {v2, v3}, Lcom/sec/android/diagmonagent/log/provider/utils/Validator;->validateSrObj(Landroid/content/Context;Landroid/os/Bundle;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 158
    sget-object p0, Lcom/sec/android/diagmonagent/log/provider/utils/DiagMonUtil;->TAG:Ljava/lang/String;

    const-string p1, "Invalid SR object"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 162
    :cond_2
    sget-object v2, Lcom/sec/android/diagmonagent/log/provider/DiagMonSDK;->mConfig:Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;

    invoke-virtual {v2}, Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;->getContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Lcom/sec/android/diagmonagent/log/provider/DiagMonSDK;->srObj:Landroid/os/Bundle;

    invoke-static {v2, v0, v3}, Lcom/sec/android/diagmonagent/log/provider/utils/Validator;->validateErObj(Landroid/content/Context;Landroid/os/Bundle;Landroid/os/Bundle;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 163
    sget-object p0, Lcom/sec/android/diagmonagent/log/provider/utils/DiagMonUtil;->TAG:Ljava/lang/String;

    const-string p1, "Invalid ER object"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 166
    :cond_3
    sget-object v1, Lcom/sec/android/diagmonagent/log/provider/utils/DiagMonUtil;->TAG:Ljava/lang/String;

    const-string v2, "Valid SR, ER object"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    sget-object v1, Lcom/sec/android/diagmonagent/log/provider/utils/DiagMonUtil;->TAG:Ljava/lang/String;

    const-string v2, "Report your logs"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    sget-object v1, Lcom/sec/android/diagmonagent/log/provider/utils/DiagMonUtil;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "*** networkMode : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/android/diagmonagent/log/provider/EventBuilder;->getNetworkMode()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    .line 171
    sget-object v1, Lcom/sec/android/diagmonagent/log/provider/DiagMonSDK;->uri:Landroid/net/Uri;

    const-string v2, "event_report"

    const-string v3, "eventReport"

    invoke-virtual {p0, v1, v2, v3, v0}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    .line 172
    sget-object v0, Lcom/sec/android/diagmonagent/log/provider/utils/DiagMonUtil;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Response : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "result"

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    invoke-virtual {p1}, Lcom/sec/android/diagmonagent/log/provider/EventBuilder;->getZipPath()Ljava/lang/String;

    move-result-object p0

    .line 175
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_4

    .line 176
    invoke-static {p0}, Lcom/sec/android/diagmonagent/log/provider/utils/DiagMonUtil;->removeZipFile(Ljava/lang/String;)V

    :cond_4
    const/4 p0, 0x1

    return p0
.end method

.method public static getConfiguration()Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;
    .locals 1

    .line 301
    sget-object v0, Lcom/sec/android/diagmonagent/log/provider/DiagMonSDK;->mConfig:Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;

    return-object v0
.end method

.method public static getElp()Lcom/sec/android/diagmonagent/log/provider/DiagMonProvider;
    .locals 1

    .line 297
    sget-object v0, Lcom/sec/android/diagmonagent/log/provider/DiagMonSDK;->elp:Lcom/sec/android/diagmonagent/log/provider/DiagMonProvider;

    return-object v0
.end method

.method public static getSDKVersion()Ljava/lang/String;
    .locals 1

    const v0, 0x93b51

    .line 309
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getSDKtype()Ljava/lang/String;
    .locals 1

    const-string v0, "S"

    return-object v0
.end method

.method public static sendSRObj(Landroid/os/Bundle;)Z
    .locals 4

    .line 274
    sget-object v0, Lcom/sec/android/diagmonagent/log/provider/DiagMonSDK;->mConfig:Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;

    invoke-virtual {v0}, Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/sec/android/diagmonagent/log/provider/utils/Validator;->validateSrObj(Landroid/content/Context;Landroid/os/Bundle;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 275
    sget-object p0, Lcom/sec/android/diagmonagent/log/provider/utils/DiagMonUtil;->TAG:Ljava/lang/String;

    const-string v0, "Invalid SR object"

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    .line 276
    sput-object p0, Lcom/sec/android/diagmonagent/log/provider/DiagMonSDK;->mConfig:Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;

    const/4 p0, 0x0

    return p0

    .line 279
    :cond_0
    sget-object v0, Lcom/sec/android/diagmonagent/log/provider/utils/DiagMonUtil;->TAG:Ljava/lang/String;

    const-string v1, "Valid SR object"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    sget-object v0, Lcom/sec/android/diagmonagent/log/provider/utils/DiagMonUtil;->TAG:Ljava/lang/String;

    const-string v1, "Request Service Registration"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    sget-object v0, Lcom/sec/android/diagmonagent/log/provider/DiagMonSDK;->mConfig:Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;

    invoke-virtual {v0}, Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 283
    sget-object v1, Lcom/sec/android/diagmonagent/log/provider/DiagMonSDK;->uri:Landroid/net/Uri;

    const-string v2, "register_service"

    const-string v3, "registration"

    invoke-virtual {v0, v1, v2, v3, p0}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    .line 285
    sget-object v0, Lcom/sec/android/diagmonagent/log/provider/utils/DiagMonUtil;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Response : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "result"

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0
.end method
