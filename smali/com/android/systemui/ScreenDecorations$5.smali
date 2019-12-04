.class Lcom/android/systemui/ScreenDecorations$5;
.super Landroid/hardware/camera2/CameraManager$CameraDeviceStateCallback;
.source "ScreenDecorations.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/ScreenDecorations;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/ScreenDecorations;


# direct methods
.method constructor <init>(Lcom/android/systemui/ScreenDecorations;)V
    .locals 0

    .line 950
    iput-object p1, p0, Lcom/android/systemui/ScreenDecorations$5;->this$0:Lcom/android/systemui/ScreenDecorations;

    invoke-direct {p0}, Landroid/hardware/camera2/CameraManager$CameraDeviceStateCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onCameraDeviceStateChanged(Ljava/lang/String;IILjava/lang/String;)V
    .locals 5

    if-eqz p1, :cond_6

    if-nez p4, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    .line 963
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/ScreenDecorations$5;->this$0:Lcom/android/systemui/ScreenDecorations;

    iget-object v3, v2, Lcom/android/systemui/ScreenDecorations;->mCameraDeviceStateCallbackFilterPackage:[Ljava/lang/String;

    array-length v4, v3

    if-ge v1, v4, :cond_2

    .line 964
    aget-object v2, v3, v1

    invoke-virtual {v2, p4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    return-void

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 p4, 0x1

    if-ne p2, p4, :cond_3

    .line 970
    iget-object v1, v2, Lcom/android/systemui/ScreenDecorations;->mCameraDeviceStateMap:Ljava/util/HashMap;

    new-instance v3, Lcom/android/systemui/ScreenDecorations$CameraDeviceState;

    invoke-direct {v3, v2, p2, p3}, Lcom/android/systemui/ScreenDecorations$CameraDeviceState;-><init>(Lcom/android/systemui/ScreenDecorations;II)V

    invoke-virtual {v1, p1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 973
    :cond_3
    iget-object p1, p0, Lcom/android/systemui/ScreenDecorations$5;->this$0:Lcom/android/systemui/ScreenDecorations;

    iget-object p1, p1, Lcom/android/systemui/ScreenDecorations;->mCameraDeviceStateMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object p1

    .line 974
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    move p2, v0

    .line 976
    :cond_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_5

    .line 977
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    .line 978
    iget-object v1, p0, Lcom/android/systemui/ScreenDecorations$5;->this$0:Lcom/android/systemui/ScreenDecorations;

    iget-object v1, v1, Lcom/android/systemui/ScreenDecorations;->mCameraDeviceStateMap:Ljava/util/HashMap;

    invoke-virtual {v1, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/systemui/ScreenDecorations$CameraDeviceState;

    invoke-virtual {p3}, Lcom/android/systemui/ScreenDecorations$CameraDeviceState;->getCameraState()I

    move-result p3

    if-ne p3, p4, :cond_4

    add-int/lit8 p2, p2, 0x1

    .line 980
    iget-object p3, p0, Lcom/android/systemui/ScreenDecorations$5;->this$0:Lcom/android/systemui/ScreenDecorations;

    iget-boolean v1, p3, Lcom/android/systemui/ScreenDecorations;->mfront_camera_enable:Z

    if-nez v1, :cond_4

    .line 981
    iput-boolean p4, p3, Lcom/android/systemui/ScreenDecorations;->mfront_camera_enable:Z

    .line 982
    invoke-static {p3}, Lcom/android/systemui/ScreenDecorations;->access$800(Lcom/android/systemui/ScreenDecorations;)Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;

    move-result-object p0

    invoke-static {p0}, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->access$900(Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;)V

    return-void

    :cond_5
    if-nez p2, :cond_6

    .line 987
    iget-object p0, p0, Lcom/android/systemui/ScreenDecorations$5;->this$0:Lcom/android/systemui/ScreenDecorations;

    iget-boolean p1, p0, Lcom/android/systemui/ScreenDecorations;->mfront_camera_enable:Z

    if-eqz p1, :cond_6

    .line 988
    iput-boolean v0, p0, Lcom/android/systemui/ScreenDecorations;->mfront_camera_enable:Z

    .line 989
    invoke-static {p0}, Lcom/android/systemui/ScreenDecorations;->access$800(Lcom/android/systemui/ScreenDecorations;)Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;

    move-result-object p0

    invoke-static {p0}, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->access$900(Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;)V

    :cond_6
    :goto_1
    return-void
.end method
