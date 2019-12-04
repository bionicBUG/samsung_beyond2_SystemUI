.class Lcom/android/systemui/statusbar/phone/IndicatorMarqueeGardener$1;
.super Ljava/lang/Object;
.source "IndicatorMarqueeGardener.java"

# interfaces
.implements Lcom/android/systemui/keyguard/WakefulnessLifecycle$Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/IndicatorMarqueeGardener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/IndicatorMarqueeGardener;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/IndicatorMarqueeGardener;)V
    .locals 0

    .line 97
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/IndicatorMarqueeGardener$1;->this$0:Lcom/android/systemui/statusbar/phone/IndicatorMarqueeGardener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinishedGoingToSleep()V
    .locals 0

    .line 100
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/IndicatorMarqueeGardener$1;->this$0:Lcom/android/systemui/statusbar/phone/IndicatorMarqueeGardener;

    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/IndicatorMarqueeGardener;->access$000(Lcom/android/systemui/statusbar/phone/IndicatorMarqueeGardener;)V

    return-void
.end method
