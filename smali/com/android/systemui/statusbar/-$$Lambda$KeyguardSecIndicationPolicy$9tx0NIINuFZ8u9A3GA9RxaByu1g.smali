.class public final synthetic Lcom/android/systemui/statusbar/-$$Lambda$KeyguardSecIndicationPolicy$9tx0NIINuFZ8u9A3GA9RxaByu1g;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/statusbar/IndicationEventType;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/IndicationEventType;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/-$$Lambda$KeyguardSecIndicationPolicy$9tx0NIINuFZ8u9A3GA9RxaByu1g;->f$0:Lcom/android/systemui/statusbar/IndicationEventType;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/-$$Lambda$KeyguardSecIndicationPolicy$9tx0NIINuFZ8u9A3GA9RxaByu1g;->f$0:Lcom/android/systemui/statusbar/IndicationEventType;

    check-cast p1, Lcom/android/systemui/statusbar/IndicationItem;

    invoke-static {p0, p1}, Lcom/android/systemui/statusbar/KeyguardSecIndicationPolicy;->lambda$removeIndicationEvent$3(Lcom/android/systemui/statusbar/IndicationEventType;Lcom/android/systemui/statusbar/IndicationItem;)Z

    move-result p0

    return p0
.end method
