.class public Lcom/samsung/android/knox/lockscreen/LSOItemView;
.super Ljava/lang/Object;
.source "LSOItemView.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getView(Landroid/content/Context;Lcom/samsung/android/knox/lockscreen/LSOItemData;)Landroid/view/View;
    .locals 3

    .line 44
    invoke-virtual {p1}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->getType()B

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    move-object v0, v2

    goto :goto_0

    .line 63
    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/samsung/android/knox/lockscreen/LSOItemWidget;

    invoke-static {p0, v0}, Lcom/samsung/android/knox/lockscreen/LSOWidgetView;->getWidget(Landroid/content/Context;Lcom/samsung/android/knox/lockscreen/LSOItemWidget;)Landroid/view/View;

    move-result-object p0

    move-object v0, p0

    goto :goto_0

    .line 59
    :cond_1
    new-instance v0, Lcom/samsung/android/knox/lockscreen/LSOContainerView;

    move-object v1, p1

    check-cast v1, Lcom/samsung/android/knox/lockscreen/LSOItemContainer;

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/knox/lockscreen/LSOContainerView;-><init>(Landroid/content/Context;Lcom/samsung/android/knox/lockscreen/LSOItemContainer;)V

    goto :goto_0

    .line 55
    :cond_2
    new-instance v0, Lcom/samsung/android/knox/lockscreen/LSOImageView;

    move-object v1, p1

    check-cast v1, Lcom/samsung/android/knox/lockscreen/LSOItemImage;

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/knox/lockscreen/LSOImageView;-><init>(Landroid/content/Context;Lcom/samsung/android/knox/lockscreen/LSOItemImage;)V

    goto :goto_0

    .line 51
    :cond_3
    new-instance v0, Lcom/samsung/android/knox/lockscreen/LSOTextView;

    move-object v1, p1

    check-cast v1, Lcom/samsung/android/knox/lockscreen/LSOItemText;

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/knox/lockscreen/LSOTextView;-><init>(Landroid/content/Context;Lcom/samsung/android/knox/lockscreen/LSOItemText;)V

    goto :goto_0

    .line 47
    :cond_4
    new-instance v0, Landroid/widget/Space;

    invoke-direct {v0, p0}, Landroid/widget/Space;-><init>(Landroid/content/Context;)V

    :goto_0
    if-nez v0, :cond_5

    return-object v2

    :cond_5
    const/16 p0, 0x10

    .line 71
    invoke-virtual {p1, p0}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->isFieldUpdated(I)Z

    move-result p0

    if-eqz p0, :cond_6

    .line 72
    invoke-virtual {p1}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->getBgColor()I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_6
    const/16 p0, 0x40

    .line 75
    invoke-virtual {p1, p0}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->isFieldUpdated(I)Z

    move-result p0

    if-eqz p0, :cond_8

    .line 76
    invoke-virtual {p1}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->getAttrs()Lcom/samsung/android/knox/lockscreen/LSOAttributeSet;

    move-result-object p0

    .line 77
    invoke-virtual {p0}, Lcom/samsung/android/knox/lockscreen/LSOAttributeSet;->size()I

    move-result p1

    if-lez p1, :cond_8

    const-string p1, "android:alpha"

    .line 78
    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/lockscreen/LSOAttributeSet;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 79
    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/lockscreen/LSOAttributeSet;->getAsFloat(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 81
    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/lockscreen/LSOAttributeSet;->getAsFloat(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object p0

    .line 80
    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    invoke-virtual {v0, p0}, Landroid/view/View;->setAlpha(F)V

    goto :goto_1

    :cond_7
    const/4 p0, 0x0

    .line 83
    invoke-virtual {v0, p0}, Landroid/view/View;->setAlpha(F)V

    :cond_8
    :goto_1
    return-object v0
.end method
