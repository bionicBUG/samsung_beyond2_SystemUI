.class public final synthetic Lcom/android/systemui/statusbar/phone/-$$Lambda$QSKnoxStatusBarTextView$mGZXYZDCnNIS9NWo3oNsVr64rsk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/statusbar/phone/QSKnoxStatusBarTextView;

.field private final synthetic f$1:Landroid/graphics/Rect;

.field private final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/phone/QSKnoxStatusBarTextView;Landroid/graphics/Rect;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$QSKnoxStatusBarTextView$mGZXYZDCnNIS9NWo3oNsVr64rsk;->f$0:Lcom/android/systemui/statusbar/phone/QSKnoxStatusBarTextView;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$QSKnoxStatusBarTextView$mGZXYZDCnNIS9NWo3oNsVr64rsk;->f$1:Landroid/graphics/Rect;

    iput p3, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$QSKnoxStatusBarTextView$mGZXYZDCnNIS9NWo3oNsVr64rsk;->f$2:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$QSKnoxStatusBarTextView$mGZXYZDCnNIS9NWo3oNsVr64rsk;->f$0:Lcom/android/systemui/statusbar/phone/QSKnoxStatusBarTextView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$QSKnoxStatusBarTextView$mGZXYZDCnNIS9NWo3oNsVr64rsk;->f$1:Landroid/graphics/Rect;

    iget p0, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$QSKnoxStatusBarTextView$mGZXYZDCnNIS9NWo3oNsVr64rsk;->f$2:I

    invoke-virtual {v0, v1, p0}, Lcom/android/systemui/statusbar/phone/QSKnoxStatusBarTextView;->lambda$onDarkChanged$0$QSKnoxStatusBarTextView(Landroid/graphics/Rect;I)V

    return-void
.end method
