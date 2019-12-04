.class public Lcom/samsung/android/systemui/multisplit/MultiSplitStackDivider;
.super Ljava/lang/Object;
.source "MultiSplitStackDivider.java"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mController:Lcom/samsung/android/systemui/multisplit/MultiSplitUiController;

.field private mMultiSplitMode:I

.field private final mMultiSplitWindowManager:Lcom/samsung/android/systemui/multisplit/MultiSplitWindowManager;

.field private mView:Lcom/samsung/android/systemui/multisplit/MultiSplitStackDividerView;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/samsung/android/systemui/multisplit/MultiSplitUiController;Lcom/samsung/android/systemui/multisplit/MultiSplitWindowManager;)V
    .locals 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 27
    iput v0, p0, Lcom/samsung/android/systemui/multisplit/MultiSplitStackDivider;->mMultiSplitMode:I

    .line 33
    iput-object p1, p0, Lcom/samsung/android/systemui/multisplit/MultiSplitStackDivider;->mContext:Landroid/content/Context;

    .line 34
    iput-object p2, p0, Lcom/samsung/android/systemui/multisplit/MultiSplitStackDivider;->mController:Lcom/samsung/android/systemui/multisplit/MultiSplitUiController;

    .line 35
    iput-object p3, p0, Lcom/samsung/android/systemui/multisplit/MultiSplitStackDivider;->mMultiSplitWindowManager:Lcom/samsung/android/systemui/multisplit/MultiSplitWindowManager;

    return-void
.end method


# virtual methods
.method updateStackDividerColor(Z)V
    .locals 0

    .line 76
    iget-object p0, p0, Lcom/samsung/android/systemui/multisplit/MultiSplitStackDivider;->mView:Lcom/samsung/android/systemui/multisplit/MultiSplitStackDividerView;

    if-eqz p0, :cond_0

    .line 77
    invoke-virtual {p0, p1}, Lcom/samsung/android/systemui/multisplit/MultiSplitStackDividerView;->updateDividerColor(Z)V

    :cond_0
    return-void
.end method
