.class public Lcom/samsung/android/systemui/multisplit/MultiSplitUiController;
.super Ljava/lang/Object;
.source "MultiSplitUiController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/systemui/multisplit/MultiSplitUiController$H;
    }
.end annotation


# instance fields
.field private final mH:Lcom/samsung/android/systemui/multisplit/MultiSplitUiController$H;

.field private final mMultiSplitStackDivider:Lcom/samsung/android/systemui/multisplit/MultiSplitStackDivider;


# direct methods
.method static synthetic access$000(Lcom/samsung/android/systemui/multisplit/MultiSplitUiController;)Lcom/samsung/android/systemui/multisplit/MultiSplitUiController$H;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/samsung/android/systemui/multisplit/MultiSplitUiController;->mH:Lcom/samsung/android/systemui/multisplit/MultiSplitUiController$H;

    return-object p0
.end method


# virtual methods
.method updateStackDividerColor(Z)V
    .locals 0

    .line 190
    iget-object p0, p0, Lcom/samsung/android/systemui/multisplit/MultiSplitUiController;->mMultiSplitStackDivider:Lcom/samsung/android/systemui/multisplit/MultiSplitStackDivider;

    if-eqz p0, :cond_0

    .line 191
    invoke-virtual {p0, p1}, Lcom/samsung/android/systemui/multisplit/MultiSplitStackDivider;->updateStackDividerColor(Z)V

    :cond_0
    return-void
.end method
