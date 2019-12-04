.class public Lcom/android/systemui/statusbar/policy/QSDate;
.super Landroid/widget/TextView;
.source "QSDate.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/QSClockBellTower$TimeAudience;


# instance fields
.field protected mLastText:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private updateDate()V
    .locals 7

    .line 54
    const-class v0, Lcom/android/systemui/statusbar/policy/QSClockBellTower;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/QSClockBellTower;

    if-eqz v0, :cond_0

    const/4 v4, 0x0

    .line 56
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->getDateViewText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->getShortenDateViewText()Ljava/lang/String;

    move-result-object v6

    const-string v2, ""

    const-string v3, ""

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/android/systemui/statusbar/policy/QSDate;->notifyTimeChanged(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public notifyTimeChanged(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 47
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/QSDate;->mLastText:Ljava/lang/String;

    invoke-virtual {p4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 48
    invoke-virtual {p0, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 49
    iput-object p4, p0, Lcom/android/systemui/statusbar/policy/QSDate;->mLastText:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .line 34
    invoke-super {p0}, Landroid/widget/TextView;->onAttachedToWindow()V

    .line 35
    const-class v0, Lcom/android/systemui/statusbar/policy/QSClockBellTower;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/QSClockBellTower;

    invoke-virtual {p0}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->registerAudience(Ljava/lang/String;Lcom/android/systemui/statusbar/policy/QSClockBellTower$TimeAudience;)V

    .line 36
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/QSDate;->updateDate()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 41
    invoke-super {p0}, Landroid/widget/TextView;->onDetachedFromWindow()V

    .line 42
    const-class v0, Lcom/android/systemui/statusbar/policy/QSClockBellTower;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/QSClockBellTower;

    invoke-virtual {p0}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->unregisterAudience(Ljava/lang/String;)V

    return-void
.end method
