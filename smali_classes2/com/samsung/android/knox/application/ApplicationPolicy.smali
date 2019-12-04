.class public Lcom/samsung/android/knox/application/ApplicationPolicy;
.super Ljava/lang/Object;
.source "ApplicationPolicy.java"


# static fields
.field public static final DEVICE_ASSISTANCE_ACTIVITY_TASK:Landroid/content/Intent;

.field public static final DEVICE_ASSISTANCE_SERVICE_TASK:Landroid/content/Intent;

.field public static final LAUNCHER_TASK:Landroid/content/Intent;

.field public static final OPEN_DIALER_TASK:Landroid/content/Intent;

.field public static final OPEN_PDF_TASK:Landroid/content/Intent;

.field public static final OPEN_URL_TASK:Landroid/content/Intent;

.field public static final PLAY_AUDIO_TASK:Landroid/content/Intent;

.field public static final PLAY_VIDEO_TASK:Landroid/content/Intent;

.field public static final SMS_MMS_TASK:Landroid/content/Intent;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 510
    invoke-static {}, Lcom/samsung/android/knox/application/ApplicationPolicy;->createSmsMmsTask()Landroid/content/Intent;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/knox/application/ApplicationPolicy;->SMS_MMS_TASK:Landroid/content/Intent;

    .line 525
    invoke-static {}, Lcom/samsung/android/knox/application/ApplicationPolicy;->createLauncherTask()Landroid/content/Intent;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/knox/application/ApplicationPolicy;->LAUNCHER_TASK:Landroid/content/Intent;

    .line 540
    invoke-static {}, Lcom/samsung/android/knox/application/ApplicationPolicy;->createOpenURLTask()Landroid/content/Intent;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/knox/application/ApplicationPolicy;->OPEN_URL_TASK:Landroid/content/Intent;

    .line 556
    invoke-static {}, Lcom/samsung/android/knox/application/ApplicationPolicy;->createOpenPDFTask()Landroid/content/Intent;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/knox/application/ApplicationPolicy;->OPEN_PDF_TASK:Landroid/content/Intent;

    .line 577
    invoke-static {}, Lcom/samsung/android/knox/application/ApplicationPolicy;->createOpenDialerTask()Landroid/content/Intent;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/knox/application/ApplicationPolicy;->OPEN_DIALER_TASK:Landroid/content/Intent;

    .line 591
    invoke-static {}, Lcom/samsung/android/knox/application/ApplicationPolicy;->createAudioTask()Landroid/content/Intent;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/knox/application/ApplicationPolicy;->PLAY_AUDIO_TASK:Landroid/content/Intent;

    .line 611
    invoke-static {}, Lcom/samsung/android/knox/application/ApplicationPolicy;->createVideoTask()Landroid/content/Intent;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/knox/application/ApplicationPolicy;->PLAY_VIDEO_TASK:Landroid/content/Intent;

    .line 625
    invoke-static {}, Lcom/samsung/android/knox/application/ApplicationPolicy;->createAssistActivityTask()Landroid/content/Intent;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/knox/application/ApplicationPolicy;->DEVICE_ASSISTANCE_ACTIVITY_TASK:Landroid/content/Intent;

    .line 637
    invoke-static {}, Lcom/samsung/android/knox/application/ApplicationPolicy;->createAssistServiceTask()Landroid/content/Intent;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/knox/application/ApplicationPolicy;->DEVICE_ASSISTANCE_SERVICE_TASK:Landroid/content/Intent;

    return-void
.end method

.method private static createAssistActivityTask()Landroid/content/Intent;
    .locals 2

    .line 628
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.ASSIST"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private static createAssistServiceTask()Landroid/content/Intent;
    .locals 2

    .line 640
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.service.voice.VoiceInteractionService"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private static createAudioTask()Landroid/content/Intent;
    .locals 3

    .line 600
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "content://audio.mp3"

    .line 601
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "audio/*"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method private static createLauncherTask()Landroid/content/Intent;
    .locals 2

    .line 528
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.category.HOME"

    .line 529
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.intent.category.DEFAULT"

    .line 530
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method private static createOpenDialerTask()Landroid/content/Intent;
    .locals 2

    .line 580
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.DIAL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "tel:"

    .line 581
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    return-object v0
.end method

.method private static createOpenPDFTask()Landroid/content/Intent;
    .locals 3

    .line 565
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 566
    new-instance v1, Ljava/io/File;

    const-string v2, "file.pdf"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 567
    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "application/pdf"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method private static createOpenURLTask()Landroid/content/Intent;
    .locals 2

    .line 543
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.category.DEFAULT"

    .line 544
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.intent.category.BROWSABLE"

    .line 545
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "http://"

    .line 546
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    return-object v0
.end method

.method private static createSmsMmsTask()Landroid/content/Intent;
    .locals 2

    .line 513
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SENDTO"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.category.DEFAULT"

    .line 514
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "smsto:"

    .line 515
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    return-object v0
.end method

.method private static createVideoTask()Landroid/content/Intent;
    .locals 2

    .line 614
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "video/*"

    .line 615
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method
