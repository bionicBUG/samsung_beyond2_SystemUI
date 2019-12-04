.class public Lcom/android/systemui/util/CoverUtil;
.super Ljava/lang/Object;
.source "CoverUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/util/CoverUtil$CoverStateChangedListener;
    }
.end annotation

.annotation runtime Ljavax/inject/Singleton;
.end annotation


# instance fields
.field private mCoverState:Lcom/samsung/android/cover/CoverState;

.field private mCoverStateChangedListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/util/CoverUtil$CoverStateChangedListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/util/CoverUtil;->mCoverStateChangedListeners:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 18
    iput-object v0, p0, Lcom/android/systemui/util/CoverUtil;->mCoverState:Lcom/samsung/android/cover/CoverState;

    return-void
.end method

.method static synthetic lambda$updateCoverState$0(Lcom/samsung/android/cover/CoverState;Lcom/android/systemui/util/CoverUtil$CoverStateChangedListener;)V
    .locals 0

    .line 31
    invoke-interface {p1, p0}, Lcom/android/systemui/util/CoverUtil$CoverStateChangedListener;->onUpdateCoverState(Lcom/samsung/android/cover/CoverState;)V

    return-void
.end method

.method private setCoverState(Lcom/samsung/android/cover/CoverState;)V
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/android/systemui/util/CoverUtil;->mCoverState:Lcom/samsung/android/cover/CoverState;

    return-void
.end method


# virtual methods
.method public addListener(Lcom/android/systemui/util/CoverUtil$CoverStateChangedListener;)V
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/android/systemui/util/CoverUtil;->mCoverStateChangedListeners:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getCoverState()Lcom/samsung/android/cover/CoverState;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/android/systemui/util/CoverUtil;->mCoverState:Lcom/samsung/android/cover/CoverState;

    return-object p0
.end method

.method public removeListener(Lcom/android/systemui/util/CoverUtil$CoverStateChangedListener;)V
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/android/systemui/util/CoverUtil;->mCoverStateChangedListeners:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public updateCoverState(Lcom/samsung/android/cover/CoverState;)V
    .locals 1

    .line 30
    invoke-direct {p0, p1}, Lcom/android/systemui/util/CoverUtil;->setCoverState(Lcom/samsung/android/cover/CoverState;)V

    .line 31
    iget-object p0, p0, Lcom/android/systemui/util/CoverUtil;->mCoverStateChangedListeners:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/systemui/util/-$$Lambda$CoverUtil$IhvMNwg6ZfnarJCkaTBZW_UugDk;

    invoke-direct {v0, p1}, Lcom/android/systemui/util/-$$Lambda$CoverUtil$IhvMNwg6ZfnarJCkaTBZW_UugDk;-><init>(Lcom/samsung/android/cover/CoverState;)V

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method
