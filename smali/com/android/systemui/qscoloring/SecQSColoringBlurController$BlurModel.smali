.class Lcom/android/systemui/qscoloring/SecQSColoringBlurController$BlurModel;
.super Ljava/lang/Object;
.source "SecQSColoringBlurController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qscoloring/SecQSColoringBlurController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BlurModel"
.end annotation


# instance fields
.field private final DimAmount:F

.field private final FloatingShortcutVisible:Z

.field private final HeightAnimationOverlapped:Z

.field private final HeightAnimatorExpand:Z

.field private final IsBackDropViewDrawn:Z

.field private final IsCollapseAnimationTriggered:Z

.field private final MirrorVisible:Z

.field private final PanelFullyCollapsed:Z

.field private final PanelFullyExpanded:Z

.field private final QsAnimatorExpand:Z

.field final synthetic this$0:Lcom/android/systemui/qscoloring/SecQSColoringBlurController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qscoloring/SecQSColoringBlurController;ZZZZZZZZZF)V
    .locals 0

    .line 240
    iput-object p1, p0, Lcom/android/systemui/qscoloring/SecQSColoringBlurController$BlurModel;->this$0:Lcom/android/systemui/qscoloring/SecQSColoringBlurController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 241
    iput-boolean p2, p0, Lcom/android/systemui/qscoloring/SecQSColoringBlurController$BlurModel;->MirrorVisible:Z

    .line 242
    iput-boolean p3, p0, Lcom/android/systemui/qscoloring/SecQSColoringBlurController$BlurModel;->FloatingShortcutVisible:Z

    .line 243
    iput-boolean p4, p0, Lcom/android/systemui/qscoloring/SecQSColoringBlurController$BlurModel;->QsAnimatorExpand:Z

    .line 244
    iput-boolean p5, p0, Lcom/android/systemui/qscoloring/SecQSColoringBlurController$BlurModel;->HeightAnimatorExpand:Z

    .line 245
    iput-boolean p6, p0, Lcom/android/systemui/qscoloring/SecQSColoringBlurController$BlurModel;->HeightAnimationOverlapped:Z

    .line 246
    iput-boolean p7, p0, Lcom/android/systemui/qscoloring/SecQSColoringBlurController$BlurModel;->IsCollapseAnimationTriggered:Z

    .line 247
    iput-boolean p8, p0, Lcom/android/systemui/qscoloring/SecQSColoringBlurController$BlurModel;->PanelFullyExpanded:Z

    .line 248
    iput-boolean p9, p0, Lcom/android/systemui/qscoloring/SecQSColoringBlurController$BlurModel;->PanelFullyCollapsed:Z

    .line 249
    iput-boolean p10, p0, Lcom/android/systemui/qscoloring/SecQSColoringBlurController$BlurModel;->IsBackDropViewDrawn:Z

    .line 250
    iput p11, p0, Lcom/android/systemui/qscoloring/SecQSColoringBlurController$BlurModel;->DimAmount:F

    return-void
.end method


# virtual methods
.method public getLogString()Ljava/lang/String;
    .locals 3

    .line 269
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "BlurModel"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 270
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "(MirrorVisible:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/systemui/qscoloring/SecQSColoringBlurController$BlurModel;->MirrorVisible:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 271
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", FloatingShortcutVisible:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/systemui/qscoloring/SecQSColoringBlurController$BlurModel;->FloatingShortcutVisible:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 272
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", QsAnimatorExpand:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/systemui/qscoloring/SecQSColoringBlurController$BlurModel;->QsAnimatorExpand:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 273
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", HeightAnimatorExpand:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/systemui/qscoloring/SecQSColoringBlurController$BlurModel;->HeightAnimatorExpand:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 274
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", HeightAnimationOverlapped:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/systemui/qscoloring/SecQSColoringBlurController$BlurModel;->HeightAnimationOverlapped:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 275
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", IsCollapseAnimationTriggered:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/systemui/qscoloring/SecQSColoringBlurController$BlurModel;->IsCollapseAnimationTriggered:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 276
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", PanelFullyExpanded:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/systemui/qscoloring/SecQSColoringBlurController$BlurModel;->PanelFullyExpanded:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 277
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", PanelFullyCollapsed:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/systemui/qscoloring/SecQSColoringBlurController$BlurModel;->PanelFullyCollapsed:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 278
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", BackDropViewDrawn:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/systemui/qscoloring/SecQSColoringBlurController$BlurModel;->IsBackDropViewDrawn:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 279
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", DimAmount:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/systemui/qscoloring/SecQSColoringBlurController$BlurModel;->DimAmount:F

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    .line 280
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 281
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public gonnaBeClear()Z
    .locals 1

    .line 285
    iget p0, p0, Lcom/android/systemui/qscoloring/SecQSColoringBlurController$BlurModel;->DimAmount:F

    const/4 v0, 0x0

    invoke-static {p0, v0}, Ljava/lang/Float;->compare(FF)I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isEquals(Lcom/android/systemui/qscoloring/SecQSColoringBlurController$BlurModel;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 255
    :cond_0
    iget-boolean v1, p0, Lcom/android/systemui/qscoloring/SecQSColoringBlurController$BlurModel;->MirrorVisible:Z

    iget-boolean v2, p1, Lcom/android/systemui/qscoloring/SecQSColoringBlurController$BlurModel;->MirrorVisible:Z

    if-ne v1, v2, :cond_1

    return v0

    .line 256
    :cond_1
    iget-boolean v1, p0, Lcom/android/systemui/qscoloring/SecQSColoringBlurController$BlurModel;->FloatingShortcutVisible:Z

    iget-boolean v2, p1, Lcom/android/systemui/qscoloring/SecQSColoringBlurController$BlurModel;->FloatingShortcutVisible:Z

    if-ne v1, v2, :cond_2

    return v0

    .line 257
    :cond_2
    iget-boolean v1, p0, Lcom/android/systemui/qscoloring/SecQSColoringBlurController$BlurModel;->QsAnimatorExpand:Z

    iget-boolean v2, p1, Lcom/android/systemui/qscoloring/SecQSColoringBlurController$BlurModel;->QsAnimatorExpand:Z

    if-ne v1, v2, :cond_3

    return v0

    .line 258
    :cond_3
    iget-boolean v1, p0, Lcom/android/systemui/qscoloring/SecQSColoringBlurController$BlurModel;->HeightAnimatorExpand:Z

    iget-boolean v2, p1, Lcom/android/systemui/qscoloring/SecQSColoringBlurController$BlurModel;->HeightAnimatorExpand:Z

    if-ne v1, v2, :cond_4

    return v0

    .line 259
    :cond_4
    iget-boolean v1, p0, Lcom/android/systemui/qscoloring/SecQSColoringBlurController$BlurModel;->HeightAnimationOverlapped:Z

    iget-boolean v2, p1, Lcom/android/systemui/qscoloring/SecQSColoringBlurController$BlurModel;->HeightAnimationOverlapped:Z

    if-ne v1, v2, :cond_5

    return v0

    .line 260
    :cond_5
    iget-boolean v1, p0, Lcom/android/systemui/qscoloring/SecQSColoringBlurController$BlurModel;->IsCollapseAnimationTriggered:Z

    iget-boolean v2, p1, Lcom/android/systemui/qscoloring/SecQSColoringBlurController$BlurModel;->IsCollapseAnimationTriggered:Z

    if-ne v1, v2, :cond_6

    return v0

    .line 261
    :cond_6
    iget-boolean v1, p0, Lcom/android/systemui/qscoloring/SecQSColoringBlurController$BlurModel;->PanelFullyExpanded:Z

    iget-boolean v2, p1, Lcom/android/systemui/qscoloring/SecQSColoringBlurController$BlurModel;->PanelFullyExpanded:Z

    if-ne v1, v2, :cond_7

    return v0

    .line 262
    :cond_7
    iget-boolean v1, p0, Lcom/android/systemui/qscoloring/SecQSColoringBlurController$BlurModel;->PanelFullyCollapsed:Z

    iget-boolean v2, p1, Lcom/android/systemui/qscoloring/SecQSColoringBlurController$BlurModel;->PanelFullyCollapsed:Z

    if-ne v1, v2, :cond_8

    return v0

    .line 263
    :cond_8
    iget-boolean v1, p0, Lcom/android/systemui/qscoloring/SecQSColoringBlurController$BlurModel;->IsBackDropViewDrawn:Z

    iget-boolean v2, p1, Lcom/android/systemui/qscoloring/SecQSColoringBlurController$BlurModel;->IsBackDropViewDrawn:Z

    if-ne v1, v2, :cond_9

    return v0

    .line 264
    :cond_9
    iget p0, p0, Lcom/android/systemui/qscoloring/SecQSColoringBlurController$BlurModel;->DimAmount:F

    iget p1, p1, Lcom/android/systemui/qscoloring/SecQSColoringBlurController$BlurModel;->DimAmount:F

    invoke-static {p0, p1}, Ljava/lang/Float;->compare(FF)I

    move-result p0

    if-nez p0, :cond_a

    return v0

    :cond_a
    const/4 p0, 0x1

    return p0
.end method

.method public needToPrintLog(FF)Z
    .locals 1

    .line 289
    invoke-static {p1, p2}, Ljava/lang/Float;->compare(FF)I

    move-result p0

    if-eqz p0, :cond_1

    const p0, 0x3e4ccccd    # 0.2f

    .line 290
    invoke-static {p0, p1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Float;->compare(FF)I

    move-result p1

    if-eqz p1, :cond_0

    .line 291
    invoke-static {p0, p2}, Ljava/lang/Float;->compare(FF)I

    move-result p0

    if-lez p0, :cond_0

    invoke-static {v0, p2}, Ljava/lang/Float;->compare(FF)I

    move-result p0

    if-nez p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
