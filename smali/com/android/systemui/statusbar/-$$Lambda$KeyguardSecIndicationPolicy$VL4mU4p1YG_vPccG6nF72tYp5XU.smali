.class public final synthetic Lcom/android/systemui/statusbar/-$$Lambda$KeyguardSecIndicationPolicy$VL4mU4p1YG_vPccG6nF72tYp5XU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/statusbar/KeyguardSecIndicationPolicy;

.field private final synthetic f$1:Lcom/android/systemui/statusbar/IndicationChangeListener;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/KeyguardSecIndicationPolicy;Lcom/android/systemui/statusbar/IndicationChangeListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/-$$Lambda$KeyguardSecIndicationPolicy$VL4mU4p1YG_vPccG6nF72tYp5XU;->f$0:Lcom/android/systemui/statusbar/KeyguardSecIndicationPolicy;

    iput-object p2, p0, Lcom/android/systemui/statusbar/-$$Lambda$KeyguardSecIndicationPolicy$VL4mU4p1YG_vPccG6nF72tYp5XU;->f$1:Lcom/android/systemui/statusbar/IndicationChangeListener;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/-$$Lambda$KeyguardSecIndicationPolicy$VL4mU4p1YG_vPccG6nF72tYp5XU;->f$0:Lcom/android/systemui/statusbar/KeyguardSecIndicationPolicy;

    iget-object p0, p0, Lcom/android/systemui/statusbar/-$$Lambda$KeyguardSecIndicationPolicy$VL4mU4p1YG_vPccG6nF72tYp5XU;->f$1:Lcom/android/systemui/statusbar/IndicationChangeListener;

    check-cast p1, Lcom/android/systemui/statusbar/IndicationPosition;

    invoke-virtual {v0, p0, p1}, Lcom/android/systemui/statusbar/KeyguardSecIndicationPolicy;->lambda$addListener$7$KeyguardSecIndicationPolicy(Lcom/android/systemui/statusbar/IndicationChangeListener;Lcom/android/systemui/statusbar/IndicationPosition;)V

    return-void
.end method
