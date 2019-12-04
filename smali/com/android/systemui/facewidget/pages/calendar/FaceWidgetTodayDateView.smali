.class public Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetTodayDateView;
.super Landroid/widget/LinearLayout;
.source "FaceWidgetTodayDateView.java"


# instance fields
.field private mDayView:Landroid/widget/TextView;

.field private mMonthView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 39
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 43
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 47
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 51
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method private initViews()V
    .locals 1

    .line 62
    sget v0, Lcom/android/systemui/R$id;->facewidget_today_clock_day:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/widget/SystemUITextView;

    iput-object v0, p0, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetTodayDateView;->mDayView:Landroid/widget/TextView;

    .line 63
    sget v0, Lcom/android/systemui/R$id;->facewidget_today_clock_month:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/widget/SystemUITextView;

    iput-object v0, p0, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetTodayDateView;->mMonthView:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 0

    .line 56
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 57
    invoke-direct {p0}, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetTodayDateView;->initViews()V

    .line 58
    invoke-virtual {p0}, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetTodayDateView;->updateDay()V

    return-void
.end method

.method public updateDay()V
    .locals 5

    .line 67
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    .line 69
    iget-object v2, p0, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetTodayDateView;->mMonthView:Landroid/widget/TextView;

    if-eqz v2, :cond_0

    .line 70
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "MMMM"

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 71
    iget-object v3, p0, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetTodayDateView;->mMonthView:Landroid/widget/TextView;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 74
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetTodayDateView;->mDayView:Landroid/widget/TextView;

    if-eqz v2, :cond_1

    const-string v2, "d"

    .line 75
    invoke-static {v2}, Landroid/icu/text/DateFormat;->getInstanceForSkeleton(Ljava/lang/String;)Landroid/icu/text/DateFormat;

    move-result-object v2

    .line 76
    iget-object p0, p0, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetTodayDateView;->mDayView:Landroid/widget/TextView;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/icu/text/DateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method
