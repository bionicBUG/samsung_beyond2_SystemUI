.class public final synthetic Lcom/android/systemui/-$$Lambda$ImageWallpaper$GLEngine$-NBJIUWtexkWA9ukKJuKZ2MWE4U;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/ImageWallpaper$GLEngine;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/ImageWallpaper$GLEngine;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/-$$Lambda$ImageWallpaper$GLEngine$-NBJIUWtexkWA9ukKJuKZ2MWE4U;->f$0:Lcom/android/systemui/ImageWallpaper$GLEngine;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/-$$Lambda$ImageWallpaper$GLEngine$-NBJIUWtexkWA9ukKJuKZ2MWE4U;->f$0:Lcom/android/systemui/ImageWallpaper$GLEngine;

    invoke-virtual {p0}, Lcom/android/systemui/ImageWallpaper$GLEngine;->lambda$onSurfaceRedrawNeeded$6$ImageWallpaper$GLEngine()V

    return-void
.end method
