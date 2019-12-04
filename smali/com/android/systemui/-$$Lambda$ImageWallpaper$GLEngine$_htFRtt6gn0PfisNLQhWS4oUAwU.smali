.class public final synthetic Lcom/android/systemui/-$$Lambda$ImageWallpaper$GLEngine$_htFRtt6gn0PfisNLQhWS4oUAwU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/ImageWallpaper$GLEngine;

.field private final synthetic f$1:I

.field private final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/ImageWallpaper$GLEngine;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/-$$Lambda$ImageWallpaper$GLEngine$_htFRtt6gn0PfisNLQhWS4oUAwU;->f$0:Lcom/android/systemui/ImageWallpaper$GLEngine;

    iput p2, p0, Lcom/android/systemui/-$$Lambda$ImageWallpaper$GLEngine$_htFRtt6gn0PfisNLQhWS4oUAwU;->f$1:I

    iput p3, p0, Lcom/android/systemui/-$$Lambda$ImageWallpaper$GLEngine$_htFRtt6gn0PfisNLQhWS4oUAwU;->f$2:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/-$$Lambda$ImageWallpaper$GLEngine$_htFRtt6gn0PfisNLQhWS4oUAwU;->f$0:Lcom/android/systemui/ImageWallpaper$GLEngine;

    iget v1, p0, Lcom/android/systemui/-$$Lambda$ImageWallpaper$GLEngine$_htFRtt6gn0PfisNLQhWS4oUAwU;->f$1:I

    iget p0, p0, Lcom/android/systemui/-$$Lambda$ImageWallpaper$GLEngine$_htFRtt6gn0PfisNLQhWS4oUAwU;->f$2:I

    invoke-virtual {v0, v1, p0}, Lcom/android/systemui/ImageWallpaper$GLEngine;->lambda$onSurfaceChanged$5$ImageWallpaper$GLEngine(II)V

    return-void
.end method
