.class Lcom/android/systemui/wallpaper/MultiPackDispatcher$MyHandler;
.super Landroid/os/Handler;
.source "MultiPackDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/wallpaper/MultiPackDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/wallpaper/MultiPackDispatcher;


# direct methods
.method private constructor <init>(Lcom/android/systemui/wallpaper/MultiPackDispatcher;)V
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/android/systemui/wallpaper/MultiPackDispatcher$MyHandler;->this$0:Lcom/android/systemui/wallpaper/MultiPackDispatcher;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/wallpaper/MultiPackDispatcher;Lcom/android/systemui/wallpaper/MultiPackDispatcher$1;)V
    .locals 0

    .line 46
    invoke-direct {p0, p1}, Lcom/android/systemui/wallpaper/MultiPackDispatcher$MyHandler;-><init>(Lcom/android/systemui/wallpaper/MultiPackDispatcher;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1    # Landroid/os/Message;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 52
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 53
    iget p1, p1, Landroid/os/Message;->what:I

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 67
    :cond_0
    invoke-static {}, Lcom/android/systemui/wallpaper/MultiPackDispatcher;->access$300()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MultiPackDispatcher cleared."

    invoke-static {p1, v0}, Lcom/android/systemui/wallpaper/WallpaperLog;->addLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    iget-object p0, p0, Lcom/android/systemui/wallpaper/MultiPackDispatcher$MyHandler;->this$0:Lcom/android/systemui/wallpaper/MultiPackDispatcher;

    invoke-static {p0}, Lcom/android/systemui/wallpaper/MultiPackDispatcher;->access$400(Lcom/android/systemui/wallpaper/MultiPackDispatcher;)Landroid/content/Context;

    move-result-object p0

    const-string p1, "WPaperLastDlsUri"

    const-string v0, ""

    invoke-static {p0, p1, v0}, Lcom/android/systemui/Prefs;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 55
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/wallpaper/MultiPackDispatcher$MyHandler;->this$0:Lcom/android/systemui/wallpaper/MultiPackDispatcher;

    invoke-static {p1}, Lcom/android/systemui/wallpaper/MultiPackDispatcher;->access$000(Lcom/android/systemui/wallpaper/MultiPackDispatcher;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 57
    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/wallpaper/MultiPackDispatcher$MyHandler;->this$0:Lcom/android/systemui/wallpaper/MultiPackDispatcher;

    invoke-static {p0}, Lcom/android/systemui/wallpaper/MultiPackDispatcher;->access$100(Lcom/android/systemui/wallpaper/MultiPackDispatcher;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 59
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 61
    :cond_2
    iget-object p1, p0, Lcom/android/systemui/wallpaper/MultiPackDispatcher$MyHandler;->this$0:Lcom/android/systemui/wallpaper/MultiPackDispatcher;

    invoke-static {p1}, Lcom/android/systemui/wallpaper/MultiPackDispatcher;->access$200(Lcom/android/systemui/wallpaper/MultiPackDispatcher;)Z

    move-result p1

    if-nez p1, :cond_3

    const/4 p1, 0x0

    const-wide/16 v0, 0x2bc

    .line 62
    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_3
    :goto_0
    return-void
.end method
