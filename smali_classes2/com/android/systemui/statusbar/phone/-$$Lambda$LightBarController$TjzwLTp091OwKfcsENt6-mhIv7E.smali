.class public final synthetic Lcom/android/systemui/statusbar/phone/-$$Lambda$LightBarController$TjzwLTp091OwKfcsENt6-mhIv7E;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/statusbar/phone/LightBarController;

.field private final synthetic f$1:Landroid/graphics/Rect;

.field private final synthetic f$2:Landroid/graphics/Rect;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/phone/LightBarController;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$LightBarController$TjzwLTp091OwKfcsENt6-mhIv7E;->f$0:Lcom/android/systemui/statusbar/phone/LightBarController;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$LightBarController$TjzwLTp091OwKfcsENt6-mhIv7E;->f$1:Landroid/graphics/Rect;

    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$LightBarController$TjzwLTp091OwKfcsENt6-mhIv7E;->f$2:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$LightBarController$TjzwLTp091OwKfcsENt6-mhIv7E;->f$0:Lcom/android/systemui/statusbar/phone/LightBarController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$LightBarController$TjzwLTp091OwKfcsENt6-mhIv7E;->f$1:Landroid/graphics/Rect;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$LightBarController$TjzwLTp091OwKfcsENt6-mhIv7E;->f$2:Landroid/graphics/Rect;

    invoke-virtual {v0, v1, p0}, Lcom/android/systemui/statusbar/phone/LightBarController;->lambda$onSystemUiVisibilityChanged$0$LightBarController(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    return-void
.end method
