.class public Lcom/android/systemui/volume/util/CoverUtilWrapper;
.super Ljava/lang/Object;
.source "CoverUtilWrapper.java"


# instance fields
.field private mCoverStateChangedListener:Lcom/android/systemui/util/CoverUtil$CoverStateChangedListener;

.field private final mCoverUtil:Lcom/android/systemui/util/CoverUtil;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const-class v0, Lcom/android/systemui/util/CoverUtil;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/util/CoverUtil;

    iput-object v0, p0, Lcom/android/systemui/volume/util/CoverUtilWrapper;->mCoverUtil:Lcom/android/systemui/util/CoverUtil;

    return-void
.end method

.method static synthetic lambda$addListener$0(Ljava/util/function/Consumer;Lcom/samsung/android/cover/CoverState;)V
    .locals 2

    .line 21
    invoke-virtual {p1}, Lcom/samsung/android/cover/CoverState;->getSwitchState()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 22
    invoke-virtual {p1}, Lcom/samsung/android/cover/CoverState;->getType()I

    move-result p1

    .line 23
    new-instance v1, Landroid/util/Pair;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {v1, v0, p1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {p0, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public addListener(Ljava/util/function/Consumer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Landroid/util/Pair<",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Integer;",
            ">;>;)V"
        }
    .end annotation

    .line 20
    new-instance v0, Lcom/android/systemui/volume/util/-$$Lambda$CoverUtilWrapper$-zTHI2xOjd_sGJ2vuUc0zQtHMco;

    invoke-direct {v0, p1}, Lcom/android/systemui/volume/util/-$$Lambda$CoverUtilWrapper$-zTHI2xOjd_sGJ2vuUc0zQtHMco;-><init>(Ljava/util/function/Consumer;)V

    iput-object v0, p0, Lcom/android/systemui/volume/util/CoverUtilWrapper;->mCoverStateChangedListener:Lcom/android/systemui/util/CoverUtil$CoverStateChangedListener;

    .line 25
    iget-object p1, p0, Lcom/android/systemui/volume/util/CoverUtilWrapper;->mCoverUtil:Lcom/android/systemui/util/CoverUtil;

    iget-object p0, p0, Lcom/android/systemui/volume/util/CoverUtilWrapper;->mCoverStateChangedListener:Lcom/android/systemui/util/CoverUtil$CoverStateChangedListener;

    invoke-virtual {p1, p0}, Lcom/android/systemui/util/CoverUtil;->addListener(Lcom/android/systemui/util/CoverUtil$CoverStateChangedListener;)V

    return-void
.end method

.method public removeListener()V
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/android/systemui/volume/util/CoverUtilWrapper;->mCoverStateChangedListener:Lcom/android/systemui/util/CoverUtil$CoverStateChangedListener;

    if-eqz v0, :cond_0

    .line 30
    iget-object p0, p0, Lcom/android/systemui/volume/util/CoverUtilWrapper;->mCoverUtil:Lcom/android/systemui/util/CoverUtil;

    invoke-virtual {p0, v0}, Lcom/android/systemui/util/CoverUtil;->removeListener(Lcom/android/systemui/util/CoverUtil$CoverStateChangedListener;)V

    :cond_0
    return-void
.end method
