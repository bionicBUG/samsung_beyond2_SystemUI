.class public Lcom/android/systemui/wallpaper/video/SurfaceInfo;
.super Ljava/lang/Object;
.source "SurfaceInfo.java"


# instance fields
.field public height:I

.field public surfaceHolder:Landroid/view/SurfaceHolder;

.field public width:I


# direct methods
.method public constructor <init>(Landroid/view/SurfaceHolder;II)V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/android/systemui/wallpaper/video/SurfaceInfo;->surfaceHolder:Landroid/view/SurfaceHolder;

    .line 27
    iput p2, p0, Lcom/android/systemui/wallpaper/video/SurfaceInfo;->width:I

    .line 28
    iput p3, p0, Lcom/android/systemui/wallpaper/video/SurfaceInfo;->height:I

    return-void
.end method
