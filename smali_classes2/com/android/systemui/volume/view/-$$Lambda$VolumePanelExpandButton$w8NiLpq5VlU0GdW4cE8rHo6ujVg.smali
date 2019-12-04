.class public final synthetic Lcom/android/systemui/volume/view/-$$Lambda$VolumePanelExpandButton$w8NiLpq5VlU0GdW4cE8rHo6ujVg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/volume/view/VolumePanelExpandButton;

.field private final synthetic f$1:Lcom/samsung/systemui/splugins/volume/VolumePanelAction;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/volume/view/VolumePanelExpandButton;Lcom/samsung/systemui/splugins/volume/VolumePanelAction;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/volume/view/-$$Lambda$VolumePanelExpandButton$w8NiLpq5VlU0GdW4cE8rHo6ujVg;->f$0:Lcom/android/systemui/volume/view/VolumePanelExpandButton;

    iput-object p2, p0, Lcom/android/systemui/volume/view/-$$Lambda$VolumePanelExpandButton$w8NiLpq5VlU0GdW4cE8rHo6ujVg;->f$1:Lcom/samsung/systemui/splugins/volume/VolumePanelAction;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/volume/view/-$$Lambda$VolumePanelExpandButton$w8NiLpq5VlU0GdW4cE8rHo6ujVg;->f$0:Lcom/android/systemui/volume/view/VolumePanelExpandButton;

    iget-object p0, p0, Lcom/android/systemui/volume/view/-$$Lambda$VolumePanelExpandButton$w8NiLpq5VlU0GdW4cE8rHo6ujVg;->f$1:Lcom/samsung/systemui/splugins/volume/VolumePanelAction;

    invoke-virtual {v0, p0}, Lcom/android/systemui/volume/view/VolumePanelExpandButton;->lambda$dispatch$0$VolumePanelExpandButton(Lcom/samsung/systemui/splugins/volume/VolumePanelAction;)V

    return-void
.end method
