.class public final synthetic Lcom/android/systemui/statusbar/-$$Lambda$KeyguardSecIndicationPolicy$t4qSQJHWL1OXuoWK4VkK1uxhCNk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/functions/Action;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/statusbar/KeyguardSecIndicationPolicy;

.field private final synthetic f$1:Lcom/android/systemui/statusbar/IndicationPosition;

.field private final synthetic f$2:Lcom/android/systemui/statusbar/IndicationItem;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/KeyguardSecIndicationPolicy;Lcom/android/systemui/statusbar/IndicationPosition;Lcom/android/systemui/statusbar/IndicationItem;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/-$$Lambda$KeyguardSecIndicationPolicy$t4qSQJHWL1OXuoWK4VkK1uxhCNk;->f$0:Lcom/android/systemui/statusbar/KeyguardSecIndicationPolicy;

    iput-object p2, p0, Lcom/android/systemui/statusbar/-$$Lambda$KeyguardSecIndicationPolicy$t4qSQJHWL1OXuoWK4VkK1uxhCNk;->f$1:Lcom/android/systemui/statusbar/IndicationPosition;

    iput-object p3, p0, Lcom/android/systemui/statusbar/-$$Lambda$KeyguardSecIndicationPolicy$t4qSQJHWL1OXuoWK4VkK1uxhCNk;->f$2:Lcom/android/systemui/statusbar/IndicationItem;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/-$$Lambda$KeyguardSecIndicationPolicy$t4qSQJHWL1OXuoWK4VkK1uxhCNk;->f$0:Lcom/android/systemui/statusbar/KeyguardSecIndicationPolicy;

    iget-object v1, p0, Lcom/android/systemui/statusbar/-$$Lambda$KeyguardSecIndicationPolicy$t4qSQJHWL1OXuoWK4VkK1uxhCNk;->f$1:Lcom/android/systemui/statusbar/IndicationPosition;

    iget-object p0, p0, Lcom/android/systemui/statusbar/-$$Lambda$KeyguardSecIndicationPolicy$t4qSQJHWL1OXuoWK4VkK1uxhCNk;->f$2:Lcom/android/systemui/statusbar/IndicationItem;

    invoke-virtual {v0, v1, p0}, Lcom/android/systemui/statusbar/KeyguardSecIndicationPolicy;->lambda$updateTopItem$6$KeyguardSecIndicationPolicy(Lcom/android/systemui/statusbar/IndicationPosition;Lcom/android/systemui/statusbar/IndicationItem;)V

    return-void
.end method
