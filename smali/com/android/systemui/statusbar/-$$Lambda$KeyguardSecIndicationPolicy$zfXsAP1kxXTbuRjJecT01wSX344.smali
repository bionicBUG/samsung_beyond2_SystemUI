.class public final synthetic Lcom/android/systemui/statusbar/-$$Lambda$KeyguardSecIndicationPolicy$zfXsAP1kxXTbuRjJecT01wSX344;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/statusbar/IndicationPosition;

.field private final synthetic f$1:Lcom/android/systemui/statusbar/IndicationItem;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/IndicationPosition;Lcom/android/systemui/statusbar/IndicationItem;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/-$$Lambda$KeyguardSecIndicationPolicy$zfXsAP1kxXTbuRjJecT01wSX344;->f$0:Lcom/android/systemui/statusbar/IndicationPosition;

    iput-object p2, p0, Lcom/android/systemui/statusbar/-$$Lambda$KeyguardSecIndicationPolicy$zfXsAP1kxXTbuRjJecT01wSX344;->f$1:Lcom/android/systemui/statusbar/IndicationItem;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/-$$Lambda$KeyguardSecIndicationPolicy$zfXsAP1kxXTbuRjJecT01wSX344;->f$0:Lcom/android/systemui/statusbar/IndicationPosition;

    iget-object p0, p0, Lcom/android/systemui/statusbar/-$$Lambda$KeyguardSecIndicationPolicy$zfXsAP1kxXTbuRjJecT01wSX344;->f$1:Lcom/android/systemui/statusbar/IndicationItem;

    check-cast p1, Lcom/android/systemui/statusbar/IndicationChangeListener;

    invoke-static {v0, p0, p1}, Lcom/android/systemui/statusbar/KeyguardSecIndicationPolicy;->lambda$updateTopItem$5(Lcom/android/systemui/statusbar/IndicationPosition;Lcom/android/systemui/statusbar/IndicationItem;Lcom/android/systemui/statusbar/IndicationChangeListener;)V

    return-void
.end method
