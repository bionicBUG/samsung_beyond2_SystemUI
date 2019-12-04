.class public final synthetic Lcom/android/systemui/statusbar/phone/-$$Lambda$PanelCarrierLabelManager$9wmkCza0nzM0J6u6b_vEsLDyNu8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/statusbar/phone/PanelCarrierLabelManager;

.field private final synthetic f$1:Landroid/view/ViewGroup;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/phone/PanelCarrierLabelManager;Landroid/view/ViewGroup;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$PanelCarrierLabelManager$9wmkCza0nzM0J6u6b_vEsLDyNu8;->f$0:Lcom/android/systemui/statusbar/phone/PanelCarrierLabelManager;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$PanelCarrierLabelManager$9wmkCza0nzM0J6u6b_vEsLDyNu8;->f$1:Landroid/view/ViewGroup;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$PanelCarrierLabelManager$9wmkCza0nzM0J6u6b_vEsLDyNu8;->f$0:Lcom/android/systemui/statusbar/phone/PanelCarrierLabelManager;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$PanelCarrierLabelManager$9wmkCza0nzM0J6u6b_vEsLDyNu8;->f$1:Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/phone/PanelCarrierLabelManager;->lambda$updateNavBarHeight$3$PanelCarrierLabelManager(Landroid/view/ViewGroup;)V

    return-void
.end method
