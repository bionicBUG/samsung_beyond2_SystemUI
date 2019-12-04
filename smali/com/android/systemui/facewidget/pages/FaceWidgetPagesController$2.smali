.class Lcom/android/systemui/facewidget/pages/FaceWidgetPagesController$2;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "FaceWidgetPagesController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/facewidget/pages/FaceWidgetPagesController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/facewidget/pages/FaceWidgetPagesController;


# direct methods
.method constructor <init>(Lcom/android/systemui/facewidget/pages/FaceWidgetPagesController;)V
    .locals 0

    .line 150
    iput-object p1, p0, Lcom/android/systemui/facewidget/pages/FaceWidgetPagesController$2;->this$0:Lcom/android/systemui/facewidget/pages/FaceWidgetPagesController;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method

.method static synthetic lambda$onLockModeChanged$3(Lcom/android/systemui/facewidget/pages/FaceWidgetPageItem;)Ljava/util/stream/Stream;
    .locals 0

    .line 206
    invoke-virtual {p0}, Lcom/android/systemui/facewidget/pages/FaceWidgetPageItem;->getAllPagesStream()Ljava/util/stream/Stream;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$onOpenThemeChanged$1(Lcom/android/systemui/facewidget/pages/FaceWidgetPageItem;)Ljava/util/stream/Stream;
    .locals 0

    .line 168
    invoke-virtual {p0}, Lcom/android/systemui/facewidget/pages/FaceWidgetPageItem;->getAllPagesStream()Ljava/util/stream/Stream;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$onOpenThemeReApply$2(Lcom/android/systemui/facewidget/pages/FaceWidgetPageItem;)Ljava/util/stream/Stream;
    .locals 0

    .line 179
    invoke-virtual {p0}, Lcom/android/systemui/facewidget/pages/FaceWidgetPageItem;->getAllPagesStream()Ljava/util/stream/Stream;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$onRefreshCarrierInfo$0(Lcom/android/systemui/facewidget/pages/FaceWidgetPageItem;)Ljava/util/stream/Stream;
    .locals 0

    .line 156
    invoke-virtual {p0}, Lcom/android/systemui/facewidget/pages/FaceWidgetPageItem;->getAllPagesStream()Ljava/util/stream/Stream;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public onKeyguardVisibilityChanged(Z)V
    .locals 5

    .line 188
    iget-object v0, p0, Lcom/android/systemui/facewidget/pages/FaceWidgetPagesController$2;->this$0:Lcom/android/systemui/facewidget/pages/FaceWidgetPagesController;

    sget-object v1, Lcom/android/systemui/facewidget/FaceWidgetRefreshReason;->VISIBILITY_CHANGED:Lcom/android/systemui/facewidget/FaceWidgetRefreshReason;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v4, v2}, Lcom/android/systemui/facewidget/pages/FaceWidgetPagesController;->refreshViews(Lcom/android/systemui/facewidget/FaceWidgetRefreshReason;Z[Ljava/lang/Object;)V

    if-eqz p1, :cond_0

    .line 192
    iget-object p1, p0, Lcom/android/systemui/facewidget/pages/FaceWidgetPagesController$2;->this$0:Lcom/android/systemui/facewidget/pages/FaceWidgetPagesController;

    invoke-static {p1}, Lcom/android/systemui/facewidget/pages/FaceWidgetPagesController;->access$100(Lcom/android/systemui/facewidget/pages/FaceWidgetPagesController;)Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    .line 193
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onKeyguardVisibilityChanged() pending refresh count = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/systemui/facewidget/pages/FaceWidgetPagesController$2;->this$0:Lcom/android/systemui/facewidget/pages/FaceWidgetPagesController;

    invoke-static {v0}, Lcom/android/systemui/facewidget/pages/FaceWidgetPagesController;->access$100(Lcom/android/systemui/facewidget/pages/FaceWidgetPagesController;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "FaceWidgetPagesController"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    iget-object p1, p0, Lcom/android/systemui/facewidget/pages/FaceWidgetPagesController$2;->this$0:Lcom/android/systemui/facewidget/pages/FaceWidgetPagesController;

    invoke-static {p1}, Lcom/android/systemui/facewidget/pages/FaceWidgetPagesController;->access$100(Lcom/android/systemui/facewidget/pages/FaceWidgetPagesController;)Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    iget-object v0, p0, Lcom/android/systemui/facewidget/pages/FaceWidgetPagesController$2;->this$0:Lcom/android/systemui/facewidget/pages/FaceWidgetPagesController;

    new-instance v1, Lcom/android/systemui/facewidget/pages/-$$Lambda$KJMYrpp7t-yWqNVJN5WDLwwlu7s;

    invoke-direct {v1, v0}, Lcom/android/systemui/facewidget/pages/-$$Lambda$KJMYrpp7t-yWqNVJN5WDLwwlu7s;-><init>(Lcom/android/systemui/facewidget/pages/FaceWidgetPagesController;)V

    .line 195
    invoke-interface {p1, v1}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 196
    iget-object p0, p0, Lcom/android/systemui/facewidget/pages/FaceWidgetPagesController$2;->this$0:Lcom/android/systemui/facewidget/pages/FaceWidgetPagesController;

    invoke-static {p0}, Lcom/android/systemui/facewidget/pages/FaceWidgetPagesController;->access$100(Lcom/android/systemui/facewidget/pages/FaceWidgetPagesController;)Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->clear()V

    :cond_0
    return-void
.end method

.method public onLockModeChanged()V
    .locals 1

    const-string v0, "FaceWidgetPagesController.#onLockModeChanged"

    .line 203
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 204
    iget-object p0, p0, Lcom/android/systemui/facewidget/pages/FaceWidgetPagesController$2;->this$0:Lcom/android/systemui/facewidget/pages/FaceWidgetPagesController;

    invoke-static {p0}, Lcom/android/systemui/facewidget/pages/FaceWidgetPagesController;->access$000(Lcom/android/systemui/facewidget/pages/FaceWidgetPagesController;)Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    .line 205
    invoke-interface {p0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    sget-object v0, Lcom/android/systemui/facewidget/pages/-$$Lambda$FaceWidgetPagesController$2$Ol5Ndy82bzzhYxDFCiA_OKAJUS8;->INSTANCE:Lcom/android/systemui/facewidget/pages/-$$Lambda$FaceWidgetPagesController$2$Ol5Ndy82bzzhYxDFCiA_OKAJUS8;

    .line 206
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->flatMap(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    sget-object v0, Lcom/android/systemui/facewidget/pages/-$$Lambda$r-w1sko0CFKHffrdsetGLuYGc0A;->INSTANCE:Lcom/android/systemui/facewidget/pages/-$$Lambda$r-w1sko0CFKHffrdsetGLuYGc0A;

    .line 207
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    sget-object v0, Lcom/android/systemui/facewidget/pages/-$$Lambda$fxJrA9Pq-CblJRdq9GdfcBPEv_k;->INSTANCE:Lcom/android/systemui/facewidget/pages/-$$Lambda$fxJrA9Pq-CblJRdq9GdfcBPEv_k;

    .line 208
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 209
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void
.end method

.method public onOpenThemeChanged()V
    .locals 1

    const-string v0, "FaceWidgetPagesController.#onOpenThemeChanged"

    .line 165
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 166
    iget-object p0, p0, Lcom/android/systemui/facewidget/pages/FaceWidgetPagesController$2;->this$0:Lcom/android/systemui/facewidget/pages/FaceWidgetPagesController;

    invoke-static {p0}, Lcom/android/systemui/facewidget/pages/FaceWidgetPagesController;->access$000(Lcom/android/systemui/facewidget/pages/FaceWidgetPagesController;)Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    .line 167
    invoke-interface {p0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    sget-object v0, Lcom/android/systemui/facewidget/pages/-$$Lambda$FaceWidgetPagesController$2$2hZ9oidGwWYYbz4eTNpBYl9rqfM;->INSTANCE:Lcom/android/systemui/facewidget/pages/-$$Lambda$FaceWidgetPagesController$2$2hZ9oidGwWYYbz4eTNpBYl9rqfM;

    .line 168
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->flatMap(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    sget-object v0, Lcom/android/systemui/facewidget/pages/-$$Lambda$r-w1sko0CFKHffrdsetGLuYGc0A;->INSTANCE:Lcom/android/systemui/facewidget/pages/-$$Lambda$r-w1sko0CFKHffrdsetGLuYGc0A;

    .line 169
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    sget-object v0, Lcom/android/systemui/facewidget/pages/-$$Lambda$MwiRTyJy7TyhrhOpdLzD1gsH450;->INSTANCE:Lcom/android/systemui/facewidget/pages/-$$Lambda$MwiRTyJy7TyhrhOpdLzD1gsH450;

    .line 170
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 171
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void
.end method

.method public onOpenThemeReApply()V
    .locals 1

    const-string v0, "FaceWidgetPagesController.#onOpenThemeReApply"

    .line 176
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 177
    iget-object p0, p0, Lcom/android/systemui/facewidget/pages/FaceWidgetPagesController$2;->this$0:Lcom/android/systemui/facewidget/pages/FaceWidgetPagesController;

    invoke-static {p0}, Lcom/android/systemui/facewidget/pages/FaceWidgetPagesController;->access$000(Lcom/android/systemui/facewidget/pages/FaceWidgetPagesController;)Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    .line 178
    invoke-interface {p0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    sget-object v0, Lcom/android/systemui/facewidget/pages/-$$Lambda$FaceWidgetPagesController$2$JXngrGqlfOe7KEfVmtitTAl95pM;->INSTANCE:Lcom/android/systemui/facewidget/pages/-$$Lambda$FaceWidgetPagesController$2$JXngrGqlfOe7KEfVmtitTAl95pM;

    .line 179
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->flatMap(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    sget-object v0, Lcom/android/systemui/facewidget/pages/-$$Lambda$r-w1sko0CFKHffrdsetGLuYGc0A;->INSTANCE:Lcom/android/systemui/facewidget/pages/-$$Lambda$r-w1sko0CFKHffrdsetGLuYGc0A;

    .line 180
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    sget-object v0, Lcom/android/systemui/facewidget/pages/-$$Lambda$5WVitwXut5vN4dHLY8Nss7TcH9M;->INSTANCE:Lcom/android/systemui/facewidget/pages/-$$Lambda$5WVitwXut5vN4dHLY8Nss7TcH9M;

    .line 181
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 182
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void
.end method

.method public onRefreshCarrierInfo()V
    .locals 1

    const-string v0, "FaceWidgetPagesController.#onRefreshCarrierInfo"

    .line 153
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 154
    iget-object p0, p0, Lcom/android/systemui/facewidget/pages/FaceWidgetPagesController$2;->this$0:Lcom/android/systemui/facewidget/pages/FaceWidgetPagesController;

    invoke-static {p0}, Lcom/android/systemui/facewidget/pages/FaceWidgetPagesController;->access$000(Lcom/android/systemui/facewidget/pages/FaceWidgetPagesController;)Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    .line 155
    invoke-interface {p0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    sget-object v0, Lcom/android/systemui/facewidget/pages/-$$Lambda$FaceWidgetPagesController$2$eIu8yffSRns-3Qzq7bKr10VGr9g;->INSTANCE:Lcom/android/systemui/facewidget/pages/-$$Lambda$FaceWidgetPagesController$2$eIu8yffSRns-3Qzq7bKr10VGr9g;

    .line 156
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->flatMap(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    sget-object v0, Lcom/android/systemui/facewidget/pages/-$$Lambda$r-w1sko0CFKHffrdsetGLuYGc0A;->INSTANCE:Lcom/android/systemui/facewidget/pages/-$$Lambda$r-w1sko0CFKHffrdsetGLuYGc0A;

    .line 157
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    sget-object v0, Lcom/android/systemui/facewidget/pages/-$$Lambda$ntwawr70-VD7ggzs6puy8dYW16I;->INSTANCE:Lcom/android/systemui/facewidget/pages/-$$Lambda$ntwawr70-VD7ggzs6puy8dYW16I;

    .line 158
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 159
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void
.end method

.method public onTimeChanged()V
    .locals 1

    .line 219
    const-class v0, Lcom/android/systemui/facewidget/FaceWidgetController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/facewidget/FaceWidgetController;

    invoke-interface {v0}, Lcom/android/systemui/facewidget/FaceWidgetController;->isKeyguardShowing()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 222
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/facewidget/pages/FaceWidgetPagesController$2;->this$0:Lcom/android/systemui/facewidget/pages/FaceWidgetPagesController;

    sget-object v0, Lcom/android/systemui/facewidget/FaceWidgetRefreshReason;->ON_TIME_TICK:Lcom/android/systemui/facewidget/FaceWidgetRefreshReason;

    invoke-virtual {p0, v0}, Lcom/android/systemui/facewidget/pages/FaceWidgetPagesController;->refreshViews(Lcom/android/systemui/facewidget/FaceWidgetRefreshReason;)V

    return-void
.end method
