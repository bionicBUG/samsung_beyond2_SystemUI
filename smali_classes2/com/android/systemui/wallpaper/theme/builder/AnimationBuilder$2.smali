.class Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder$2;
.super Ljava/lang/Object;
.source "AnimationBuilder.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->buildAnimation(Lcom/android/systemui/wallpaper/theme/view/FrameImageView;Ljava/lang/String;)Landroid/animation/ValueAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;

.field final synthetic val$view:Lcom/android/systemui/wallpaper/theme/view/FrameImageView;


# direct methods
.method constructor <init>(Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;Lcom/android/systemui/wallpaper/theme/view/FrameImageView;)V
    .locals 0

    .line 133
    iput-object p1, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder$2;->this$0:Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;

    iput-object p2, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder$2;->val$view:Lcom/android/systemui/wallpaper/theme/view/FrameImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 4

    .line 136
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 137
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 138
    iget-object p1, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder$2;->this$0:Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;

    invoke-static {p1}, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->access$100(Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    iget-object p1, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder$2;->this$0:Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;

    invoke-static {p1}, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->access$200(Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;)J

    move-result-wide v2

    cmp-long p1, v0, v2

    if-gez p1, :cond_0

    return-void

    .line 141
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder$2;->this$0:Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->access$102(Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;J)J

    .line 143
    iget-object p1, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder$2;->val$view:Lcom/android/systemui/wallpaper/theme/view/FrameImageView;

    iget-object p1, p1, Lcom/android/systemui/wallpaper/theme/view/FrameImageView;->mQueue:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    move-result p1

    const/4 v0, 0x5

    if-ge p1, v0, :cond_4

    .line 145
    iget-object p1, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder$2;->val$view:Lcom/android/systemui/wallpaper/theme/view/FrameImageView;

    iget-object p1, p1, Lcom/android/systemui/wallpaper/theme/view/FrameImageView;->mQueue:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    move-result p1

    if-lez p1, :cond_1

    iget-object p1, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder$2;->val$view:Lcom/android/systemui/wallpaper/theme/view/FrameImageView;

    iget-object p1, p1, Lcom/android/systemui/wallpaper/theme/view/FrameImageView;->mQueue:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->peekLast()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 146
    iget-object p1, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder$2;->val$view:Lcom/android/systemui/wallpaper/theme/view/FrameImageView;

    iget-object p1, p1, Lcom/android/systemui/wallpaper/theme/view/FrameImageView;->mQueue:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->peekLast()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_0

    .line 148
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder$2;->this$0:Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;

    invoke-static {p1}, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->access$000(Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 149
    iget-object p1, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder$2;->this$0:Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;

    const/4 v0, -0x1

    invoke-static {p1, v0}, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->access$302(Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;I)I

    .line 151
    :cond_2
    iget-object p1, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder$2;->this$0:Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;

    invoke-static {p1}, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->access$300(Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;)I

    move-result p1

    .line 153
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder$2;->this$0:Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;

    iget v0, v0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->length:I

    add-int/lit8 v0, v0, -0x2

    const/4 v1, 0x0

    if-ge p1, v0, :cond_3

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_3
    move p1, v1

    .line 158
    :goto_1
    iget-object v0, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder$2;->val$view:Lcom/android/systemui/wallpaper/theme/view/FrameImageView;

    iget-object v0, v0, Lcom/android/systemui/wallpaper/theme/view/FrameImageView;->mQueue:Ljava/util/LinkedList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 162
    new-instance v0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder$2$1;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder$2$1;-><init>(Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder$2;I)V

    new-array p0, v1, [Ljava/lang/Void;

    .line 187
    invoke-virtual {v0, p0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_4
    return-void
.end method
