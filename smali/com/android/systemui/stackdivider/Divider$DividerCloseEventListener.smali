.class Lcom/android/systemui/stackdivider/Divider$DividerCloseEventListener;
.super Lcom/samsung/android/multiwindow/IDividerCloseEventListener$Stub;
.source "Divider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/stackdivider/Divider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DividerCloseEventListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/stackdivider/Divider;


# direct methods
.method private constructor <init>(Lcom/android/systemui/stackdivider/Divider;)V
    .locals 0

    .line 441
    iput-object p1, p0, Lcom/android/systemui/stackdivider/Divider$DividerCloseEventListener;->this$0:Lcom/android/systemui/stackdivider/Divider;

    invoke-direct {p0}, Lcom/samsung/android/multiwindow/IDividerCloseEventListener$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/stackdivider/Divider;Lcom/android/systemui/stackdivider/Divider$1;)V
    .locals 0

    .line 441
    invoke-direct {p0, p1}, Lcom/android/systemui/stackdivider/Divider$DividerCloseEventListener;-><init>(Lcom/android/systemui/stackdivider/Divider;)V

    return-void
.end method


# virtual methods
.method public synthetic lambda$onAlreadyRunningOnDockedStack$0$Divider$DividerCloseEventListener()V
    .locals 0

    .line 446
    iget-object p0, p0, Lcom/android/systemui/stackdivider/Divider$DividerCloseEventListener;->this$0:Lcom/android/systemui/stackdivider/Divider;

    invoke-static {p0}, Lcom/android/systemui/stackdivider/Divider;->access$1200(Lcom/android/systemui/stackdivider/Divider;)Lcom/android/systemui/stackdivider/DividerCloseController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerCloseController;->startDimAnimation()V

    return-void
.end method

.method public onAlreadyRunningOnDockedStack()V
    .locals 2

    .line 444
    iget-object v0, p0, Lcom/android/systemui/stackdivider/Divider$DividerCloseEventListener;->this$0:Lcom/android/systemui/stackdivider/Divider;

    invoke-virtual {v0}, Lcom/android/systemui/stackdivider/Divider;->isMinimizedAndHomeResizable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 445
    iget-object v0, p0, Lcom/android/systemui/stackdivider/Divider$DividerCloseEventListener;->this$0:Lcom/android/systemui/stackdivider/Divider;

    invoke-static {v0}, Lcom/android/systemui/stackdivider/Divider;->access$300(Lcom/android/systemui/stackdivider/Divider;)Lcom/android/systemui/stackdivider/DividerView;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/stackdivider/-$$Lambda$Divider$DividerCloseEventListener$3mzDJ7Z17dtDsDQpC2NFh3ih__A;

    invoke-direct {v1, p0}, Lcom/android/systemui/stackdivider/-$$Lambda$Divider$DividerCloseEventListener$3mzDJ7Z17dtDsDQpC2NFh3ih__A;-><init>(Lcom/android/systemui/stackdivider/Divider$DividerCloseEventListener;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method
