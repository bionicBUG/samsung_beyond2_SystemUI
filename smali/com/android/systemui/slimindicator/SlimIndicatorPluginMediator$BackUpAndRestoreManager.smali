.class Lcom/android/systemui/slimindicator/SlimIndicatorPluginMediator$BackUpAndRestoreManager;
.super Ljava/lang/Object;
.source "SlimIndicatorPluginMediator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/slimindicator/SlimIndicatorPluginMediator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BackUpAndRestoreManager"
.end annotation


# instance fields
.field private mCachedBlackListDBValue:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/systemui/slimindicator/SlimIndicatorPluginMediator;


# direct methods
.method private constructor <init>(Lcom/android/systemui/slimindicator/SlimIndicatorPluginMediator;)V
    .locals 0

    .line 140
    iput-object p1, p0, Lcom/android/systemui/slimindicator/SlimIndicatorPluginMediator$BackUpAndRestoreManager;->this$0:Lcom/android/systemui/slimindicator/SlimIndicatorPluginMediator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 141
    iput-object p1, p0, Lcom/android/systemui/slimindicator/SlimIndicatorPluginMediator$BackUpAndRestoreManager;->mCachedBlackListDBValue:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/slimindicator/SlimIndicatorPluginMediator;Lcom/android/systemui/slimindicator/SlimIndicatorPluginMediator$1;)V
    .locals 0

    .line 140
    invoke-direct {p0, p1}, Lcom/android/systemui/slimindicator/SlimIndicatorPluginMediator$BackUpAndRestoreManager;-><init>(Lcom/android/systemui/slimindicator/SlimIndicatorPluginMediator;)V

    return-void
.end method


# virtual methods
.method public backUpAndResetValue()V
    .locals 2

    .line 144
    iget-object v0, p0, Lcom/android/systemui/slimindicator/SlimIndicatorPluginMediator$BackUpAndRestoreManager;->this$0:Lcom/android/systemui/slimindicator/SlimIndicatorPluginMediator;

    invoke-static {v0}, Lcom/android/systemui/slimindicator/SlimIndicatorPluginMediator;->access$200(Lcom/android/systemui/slimindicator/SlimIndicatorPluginMediator;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/slimindicator/SlimIndicatorPluginMediator$BackUpAndRestoreManager;->mCachedBlackListDBValue:Ljava/lang/String;

    .line 145
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BackUpAndRestoreManager resetValue() mCachedBlackListDBValue:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/slimindicator/SlimIndicatorPluginMediator$BackUpAndRestoreManager;->mCachedBlackListDBValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[QuickStar]SlimIndicatorPluginMediator"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    iget-object p0, p0, Lcom/android/systemui/slimindicator/SlimIndicatorPluginMediator$BackUpAndRestoreManager;->this$0:Lcom/android/systemui/slimindicator/SlimIndicatorPluginMediator;

    const-string v0, "rotate,headset"

    invoke-virtual {p0, v0}, Lcom/android/systemui/slimindicator/SlimIndicatorPluginMediator;->setBlackListDBValue(Ljava/lang/String;)V

    return-void
.end method

.method public restoreValue()V
    .locals 2

    .line 150
    iget-object v0, p0, Lcom/android/systemui/slimindicator/SlimIndicatorPluginMediator$BackUpAndRestoreManager;->mCachedBlackListDBValue:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/slimindicator/SlimIndicatorPluginMediator$BackUpAndRestoreManager;->mCachedBlackListDBValue:Ljava/lang/String;

    const-string v1, "rotate,headset"

    .line 151
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 152
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BackUpAndRestoreManager restoreValue() mCachedBlackListDBValue:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/slimindicator/SlimIndicatorPluginMediator$BackUpAndRestoreManager;->mCachedBlackListDBValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[QuickStar]SlimIndicatorPluginMediator"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    iget-object v0, p0, Lcom/android/systemui/slimindicator/SlimIndicatorPluginMediator$BackUpAndRestoreManager;->this$0:Lcom/android/systemui/slimindicator/SlimIndicatorPluginMediator;

    iget-object p0, p0, Lcom/android/systemui/slimindicator/SlimIndicatorPluginMediator$BackUpAndRestoreManager;->mCachedBlackListDBValue:Ljava/lang/String;

    invoke-virtual {v0, p0}, Lcom/android/systemui/slimindicator/SlimIndicatorPluginMediator;->setBlackListDBValue(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
