.class public Lcom/android/systemui/screenshot/ScreenshotNotificationEditorDownloadActivity;
.super Landroid/app/Activity;
.source "ScreenshotNotificationEditorDownloadActivity.java"


# static fields
.field private static ACTION_HOME_KEY_PRESSED:Ljava/lang/String; = "com.samsung.android.action.START_DOCK_OR_HOME"

.field private static final TAG:Ljava/lang/String; = "ScreenshotNotificationEditorDownloadActivity"


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mNotificationId:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 22
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 30
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotNotificationEditorDownloadActivity;->mHandler:Landroid/os/Handler;

    .line 34
    new-instance v0, Lcom/android/systemui/screenshot/ScreenshotNotificationEditorDownloadActivity$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/screenshot/ScreenshotNotificationEditorDownloadActivity$1;-><init>(Lcom/android/systemui/screenshot/ScreenshotNotificationEditorDownloadActivity;)V

    iput-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotNotificationEditorDownloadActivity;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 22
    sget-object v0, Lcom/android/systemui/screenshot/ScreenshotNotificationEditorDownloadActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .line 22
    sget-object v0, Lcom/android/systemui/screenshot/ScreenshotNotificationEditorDownloadActivity;->ACTION_HOME_KEY_PRESSED:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/systemui/screenshot/ScreenshotNotificationEditorDownloadActivity;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Lcom/android/systemui/screenshot/ScreenshotNotificationEditorDownloadActivity;->downloadPhotoEditorFromGalaxyApps()V

    return-void
.end method

.method private downloadPhotoEditorFromGalaxyApps()V
    .locals 3

    .line 141
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.sec.android.app.samsungapps"

    const-string v2, "com.sec.android.app.samsungapps.Main"

    .line 142
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v1, 0x1

    const-string v2, "directcall"

    .line 143
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v2, "callerType"

    .line 144
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "GUID"

    const-string v2, "com.sec.android.mimage.photoretouching"

    .line 145
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const v1, 0x14000020

    .line 146
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 149
    :try_start_0
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 151
    sget-object v0, Lcom/android/systemui/screenshot/ScreenshotNotificationEditorDownloadActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ActivityNotFoundException : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/ActivityNotFoundException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private initIntentFiler()V
    .locals 2

    .line 63
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 64
    sget-object v1, Lcom/android/systemui/screenshot/ScreenshotNotificationEditorDownloadActivity;->ACTION_HOME_KEY_PRESSED:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 65
    iget-object v1, p0, Lcom/android/systemui/screenshot/ScreenshotNotificationEditorDownloadActivity;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private isWhiteTheme()Z
    .locals 3

    const-string p0, "ro.build.scafe.cream"

    .line 156
    invoke-static {p0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x1

    if-eqz p0, :cond_0

    const-string/jumbo v1, "white"

    .line 157
    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    return v0

    :cond_0
    const-string p0, "ro.build.scafe.version"

    .line 161
    invoke-static {p0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    if-eqz p0, :cond_1

    .line 162
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v2, 0x4

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    const/16 v2, 0x7e1

    if-lt p0, v2, :cond_1

    return v0

    :cond_1
    return v1
.end method

.method private showPhotoEditorDownloadDialog()V
    .locals 5

    .line 105
    sget-object v0, Lcom/android/systemui/screenshot/ScreenshotNotificationEditorDownloadActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "showPhotoEditorDownloadDialog()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    sget v0, Lcom/android/systemui/R$string;->download_ps:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    sget v3, Lcom/android/systemui/R$string;->photo_editor:I

    invoke-virtual {p0, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 108
    sget v2, Lcom/android/systemui/R$string;->to_use_this_function_download_ps:I

    invoke-virtual {p0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Object;

    sget v3, Lcom/android/systemui/R$string;->photo_editor:I

    invoke-virtual {p0, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v4

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 110
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    .line 112
    invoke-direct {p0}, Lcom/android/systemui/screenshot/ScreenshotNotificationEditorDownloadActivity;->isWhiteTheme()Z

    move-result v2

    if-eqz v2, :cond_0

    const v2, 0x10302d2

    goto :goto_0

    :cond_0
    const v2, 0x10302d1

    .line 116
    :goto_0
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 117
    invoke-virtual {v3, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 118
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$string;->download_popup_button_cancel:I

    new-instance v2, Lcom/android/systemui/screenshot/ScreenshotNotificationEditorDownloadActivity$3;

    invoke-direct {v2, p0}, Lcom/android/systemui/screenshot/ScreenshotNotificationEditorDownloadActivity$3;-><init>(Lcom/android/systemui/screenshot/ScreenshotNotificationEditorDownloadActivity;)V

    .line 119
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$string;->download_popup_button_download:I

    new-instance v2, Lcom/android/systemui/screenshot/ScreenshotNotificationEditorDownloadActivity$2;

    invoke-direct {v2, p0}, Lcom/android/systemui/screenshot/ScreenshotNotificationEditorDownloadActivity$2;-><init>(Lcom/android/systemui/screenshot/ScreenshotNotificationEditorDownloadActivity;)V

    .line 124
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 130
    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 131
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 132
    new-instance v1, Lcom/android/systemui/screenshot/ScreenshotNotificationEditorDownloadActivity$4;

    invoke-direct {v1, p0}, Lcom/android/systemui/screenshot/ScreenshotNotificationEditorDownloadActivity$4;-><init>(Lcom/android/systemui/screenshot/ScreenshotNotificationEditorDownloadActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 2

    .line 99
    sget-object v0, Lcom/android/systemui/screenshot/ScreenshotNotificationEditorDownloadActivity;->TAG:Ljava/lang/String;

    const-string v1, "onBackPressed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 46
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 47
    invoke-virtual {p0, p1}, Landroid/app/Activity;->requestWindowFeature(I)Z

    .line 49
    sget-object p1, Lcom/android/systemui/screenshot/ScreenshotNotificationEditorDownloadActivity;->TAG:Ljava/lang/String;

    const-string v0, "onCreate"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "notification_id"

    const/4 v1, -0x1

    .line 52
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/screenshot/ScreenshotNotificationEditorDownloadActivity;->mNotificationId:I

    const-string p1, "notification"

    .line 55
    invoke-virtual {p0, p1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/NotificationManager;

    .line 56
    iget v0, p0, Lcom/android/systemui/screenshot/ScreenshotNotificationEditorDownloadActivity;->mNotificationId:I

    invoke-virtual {p1, v0}, Landroid/app/NotificationManager;->cancel(I)V

    .line 58
    invoke-direct {p0}, Lcom/android/systemui/screenshot/ScreenshotNotificationEditorDownloadActivity;->initIntentFiler()V

    .line 59
    invoke-direct {p0}, Lcom/android/systemui/screenshot/ScreenshotNotificationEditorDownloadActivity;->showPhotoEditorDownloadDialog()V

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 86
    sget-object v0, Lcom/android/systemui/screenshot/ScreenshotNotificationEditorDownloadActivity;->TAG:Ljava/lang/String;

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    iget-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotNotificationEditorDownloadActivity;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 89
    :try_start_0
    invoke-virtual {p0, v0}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 91
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 94
    :cond_0
    :goto_0
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method protected onPause()V
    .locals 0

    .line 81
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    return-void
.end method

.method protected onResume()V
    .locals 0

    .line 76
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    return-void
.end method

.method protected onStart()V
    .locals 1

    .line 70
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    const/4 v0, 0x1

    .line 71
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setVisible(Z)V

    return-void
.end method
