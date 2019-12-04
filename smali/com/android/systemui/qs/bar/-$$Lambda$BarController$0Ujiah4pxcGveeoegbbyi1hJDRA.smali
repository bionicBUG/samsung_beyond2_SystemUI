.class public final synthetic Lcom/android/systemui/qs/bar/-$$Lambda$BarController$0Ujiah4pxcGveeoegbbyi1hJDRA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/qs/bar/BarItem;

.field private final synthetic f$1:Lcom/android/systemui/qs/panelcolor/PanelColorModel;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/qs/bar/BarItem;Lcom/android/systemui/qs/panelcolor/PanelColorModel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/qs/bar/-$$Lambda$BarController$0Ujiah4pxcGveeoegbbyi1hJDRA;->f$0:Lcom/android/systemui/qs/bar/BarItem;

    iput-object p2, p0, Lcom/android/systemui/qs/bar/-$$Lambda$BarController$0Ujiah4pxcGveeoegbbyi1hJDRA;->f$1:Lcom/android/systemui/qs/panelcolor/PanelColorModel;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/bar/-$$Lambda$BarController$0Ujiah4pxcGveeoegbbyi1hJDRA;->f$0:Lcom/android/systemui/qs/bar/BarItem;

    iget-object p0, p0, Lcom/android/systemui/qs/bar/-$$Lambda$BarController$0Ujiah4pxcGveeoegbbyi1hJDRA;->f$1:Lcom/android/systemui/qs/panelcolor/PanelColorModel;

    invoke-static {v0, p0}, Lcom/android/systemui/qs/bar/BarController;->lambda$onPanelColorChanged$0(Lcom/android/systemui/qs/bar/BarItem;Lcom/android/systemui/qs/panelcolor/PanelColorModel;)V

    return-void
.end method
