.class Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicPage$MusicClickListener;
.super Ljava/lang/Object;
.source "FaceWidgetMusicPage.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicPage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MusicClickListener"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mKeyCode:I

.field final synthetic this$0:Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicPage;


# direct methods
.method public constructor <init>(Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicPage;Landroid/content/Context;I)V
    .locals 0

    .line 971
    iput-object p1, p0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicPage$MusicClickListener;->this$0:Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicPage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 972
    iput-object p2, p0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicPage$MusicClickListener;->mContext:Landroid/content/Context;

    .line 973
    iput p3, p0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicPage$MusicClickListener;->mKeyCode:I

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 978
    iget-object p1, p0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicPage$MusicClickListener;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController;->getInstance(Landroid/content/Context;)Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController;

    move-result-object p1

    iget v0, p0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicPage$MusicClickListener;->mKeyCode:I

    invoke-virtual {p1, v0}, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController;->onMusicClicked(I)V

    .line 979
    iget-object p1, p0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicPage$MusicClickListener;->this$0:Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicPage;

    iget p0, p0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicPage$MusicClickListener;->mKeyCode:I

    invoke-static {p1, p0}, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicPage;->access$000(Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicPage;I)V

    return-void
.end method
