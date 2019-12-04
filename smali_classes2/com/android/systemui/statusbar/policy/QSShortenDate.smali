.class public Lcom/android/systemui/statusbar/policy/QSShortenDate;
.super Lcom/android/systemui/statusbar/policy/QSDate;
.source "QSShortenDate.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 11
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/policy/QSDate;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public notifyTimeChanged(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 17
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/QSDate;->mLastText:Ljava/lang/String;

    invoke-virtual {p4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 18
    invoke-virtual {p0, p5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 19
    iput-object p5, p0, Lcom/android/systemui/statusbar/policy/QSDate;->mLastText:Ljava/lang/String;

    :cond_0
    return-void
.end method
