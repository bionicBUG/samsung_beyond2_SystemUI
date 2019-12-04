.class public Lcom/android/systemui/ScreenDecorations$CameraDeviceState;
.super Ljava/lang/Object;
.source "ScreenDecorations.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/ScreenDecorations;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CameraDeviceState"
.end annotation


# instance fields
.field private cameraState:I

.field private facing:I

.field final synthetic this$0:Lcom/android/systemui/ScreenDecorations;


# direct methods
.method public constructor <init>(Lcom/android/systemui/ScreenDecorations;II)V
    .locals 0

    .line 998
    iput-object p1, p0, Lcom/android/systemui/ScreenDecorations$CameraDeviceState;->this$0:Lcom/android/systemui/ScreenDecorations;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 999
    iput p2, p0, Lcom/android/systemui/ScreenDecorations$CameraDeviceState;->facing:I

    .line 1000
    iput p3, p0, Lcom/android/systemui/ScreenDecorations$CameraDeviceState;->cameraState:I

    return-void
.end method


# virtual methods
.method public getCameraState()I
    .locals 0

    .line 1012
    iget p0, p0, Lcom/android/systemui/ScreenDecorations$CameraDeviceState;->cameraState:I

    return p0
.end method
