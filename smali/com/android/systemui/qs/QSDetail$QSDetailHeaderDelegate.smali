.class Lcom/android/systemui/qs/QSDetail$QSDetailHeaderDelegate;
.super Landroid/view/View$AccessibilityDelegate;
.source "QSDetail.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/QSDetail;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "QSDetailHeaderDelegate"
.end annotation


# instance fields
.field private mHeaderText:Ljava/lang/CharSequence;

.field private mSwitch:Landroid/widget/Switch;

.field private mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/widget/Switch;Ljava/lang/CharSequence;Landroid/view/View;)V
    .locals 0

    .line 842
    invoke-direct {p0}, Landroid/view/View$AccessibilityDelegate;-><init>()V

    .line 843
    iput-object p1, p0, Lcom/android/systemui/qs/QSDetail$QSDetailHeaderDelegate;->mSwitch:Landroid/widget/Switch;

    .line 844
    iput-object p2, p0, Lcom/android/systemui/qs/QSDetail$QSDetailHeaderDelegate;->mHeaderText:Ljava/lang/CharSequence;

    .line 845
    iput-object p3, p0, Lcom/android/systemui/qs/QSDetail$QSDetailHeaderDelegate;->mView:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 4

    .line 850
    invoke-super {p0, p1, p2}, Landroid/view/View$AccessibilityDelegate;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 851
    iget-object v0, p0, Lcom/android/systemui/qs/QSDetail$QSDetailHeaderDelegate;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0}, Landroid/widget/Switch;->isChecked()Z

    move-result v0

    .line 852
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    if-eqz v0, :cond_0

    sget v0, Lcom/android/systemui/R$string;->switch_bar_on:I

    goto :goto_0

    :cond_0
    sget v0, Lcom/android/systemui/R$string;->switch_bar_off:I

    :goto_0
    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 853
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 854
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/systemui/qs/QSDetail$QSDetailHeaderDelegate;->mHeaderText:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 856
    instance-of v0, p1, Landroid/widget/Switch;

    if-eqz v0, :cond_1

    .line 857
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 858
    :cond_1
    instance-of p1, p1, Landroid/widget/TextView;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/android/systemui/qs/QSDetail$QSDetailHeaderDelegate;->mView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->isClickable()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 859
    iget-object p0, p0, Lcom/android/systemui/qs/QSDetail$QSDetailHeaderDelegate;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    .line 860
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 861
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 862
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    :goto_1
    return-void
.end method
