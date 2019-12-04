.class public Lcom/android/systemui/VendorServices;
.super Lcom/android/systemui/SystemUI;
.source "VendorServices.java"


# instance fields
.field private mUiThreadMonitor:Lcom/android/systemui/util/UiThreadMonitor;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Lcom/android/systemui/SystemUI;-><init>()V

    return-void
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1

    .line 46
    invoke-super {p0, p1, p2, p3}, Lcom/android/systemui/SystemUI;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 48
    sget-boolean v0, Lcom/android/systemui/Rune;->SYSUI_SUPPORT_UI_THREAD_MONITOR:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/VendorServices;->mUiThreadMonitor:Lcom/android/systemui/util/UiThreadMonitor;

    if-eqz p0, :cond_0

    .line 49
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/systemui/util/UiThreadMonitor;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public start()V
    .locals 1

    .line 38
    sget-boolean v0, Lcom/android/systemui/Rune;->SYSUI_SUPPORT_UI_THREAD_MONITOR:Z

    if-eqz v0, :cond_0

    .line 39
    invoke-static {}, Lcom/android/systemui/util/UiThreadMonitor;->getInstance()Lcom/android/systemui/util/UiThreadMonitor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/VendorServices;->mUiThreadMonitor:Lcom/android/systemui/util/UiThreadMonitor;

    .line 40
    iget-object v0, p0, Lcom/android/systemui/VendorServices;->mUiThreadMonitor:Lcom/android/systemui/util/UiThreadMonitor;

    iget-object p0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Lcom/android/systemui/util/UiThreadMonitor;->start(Landroid/content/Context;)V

    :cond_0
    return-void
.end method
