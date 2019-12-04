.class public final synthetic Lcom/android/systemui/volume/view/-$$Lambda$9BXQlgtbJqMs3cj80TltELNfjbs;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/volume/view/VolumePanelView;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/volume/view/VolumePanelView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/volume/view/-$$Lambda$9BXQlgtbJqMs3cj80TltELNfjbs;->f$0:Lcom/android/systemui/volume/view/VolumePanelView;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/volume/view/-$$Lambda$9BXQlgtbJqMs3cj80TltELNfjbs;->f$0:Lcom/android/systemui/volume/view/VolumePanelView;

    invoke-virtual {p0}, Lcom/android/systemui/volume/view/VolumePanelView;->dismiss()V

    return-void
.end method
