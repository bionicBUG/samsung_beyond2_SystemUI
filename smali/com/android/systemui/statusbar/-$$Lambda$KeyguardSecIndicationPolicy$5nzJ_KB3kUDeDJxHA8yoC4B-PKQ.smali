.class public final synthetic Lcom/android/systemui/statusbar/-$$Lambda$KeyguardSecIndicationPolicy$5nzJ_KB3kUDeDJxHA8yoC4B-PKQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field private final synthetic f$0:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/systemui/statusbar/-$$Lambda$KeyguardSecIndicationPolicy$5nzJ_KB3kUDeDJxHA8yoC4B-PKQ;->f$0:I

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    iget p0, p0, Lcom/android/systemui/statusbar/-$$Lambda$KeyguardSecIndicationPolicy$5nzJ_KB3kUDeDJxHA8yoC4B-PKQ;->f$0:I

    check-cast p1, Lcom/android/systemui/statusbar/IndicationItem;

    invoke-static {p0, p1}, Lcom/android/systemui/statusbar/KeyguardSecIndicationPolicy;->lambda$removeIndicationItem$4(ILcom/android/systemui/statusbar/IndicationItem;)Z

    move-result p0

    return p0
.end method
