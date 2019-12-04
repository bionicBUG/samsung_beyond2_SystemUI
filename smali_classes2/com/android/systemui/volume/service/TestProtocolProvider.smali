.class public Lcom/android/systemui/volume/service/TestProtocolProvider;
.super Landroid/content/ContentProvider;
.source "TestProtocolProvider.java"


# static fields
.field public static final SYSUI_IS_USER_BUILD:Z

.field private static TAG:Ljava/lang/String; = "TestProtocolProvider"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 60
    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v1, "user"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/volume/service/TestProtocolProvider;->SYSUI_IS_USER_BUILD:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method

.method private handleGlobalActionsApi(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    .line 133
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/service/TestProtocolProvider;->parseGlobalActionsApi(Ljava/lang/String;)Lcom/android/systemui/volume/service/TestProtocol$GlobalActionsApi;

    move-result-object p0

    .line 135
    sget-object p1, Lcom/android/systemui/volume/service/TestProtocolProvider$1;->$SwitchMap$com$android$systemui$volume$service$TestProtocol$GlobalActionsApi:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, p1, p0

    const-string p1, "key_boolean_type"

    const-string v0, "key_string_type"

    packed-switch p0, :pswitch_data_0

    goto/16 :goto_0

    .line 176
    :pswitch_0
    invoke-static {}, Lcom/android/systemui/globalactions/presentation/features/FakeFeatures;->getInstance()Lcom/android/systemui/globalactions/presentation/features/FakeFeatures;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 177
    invoke-static {}, Lcom/android/systemui/globalactions/presentation/features/FakeFeatures;->getInstance()Lcom/android/systemui/globalactions/presentation/features/FakeFeatures;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/globalactions/presentation/features/FakeFeatures;->reset()V

    .line 180
    :cond_0
    invoke-static {}, Lcom/android/systemui/globalactions/util/FakeConditionChecker;->getInstance()Lcom/android/systemui/globalactions/util/FakeConditionChecker;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 181
    invoke-static {}, Lcom/android/systemui/globalactions/util/FakeConditionChecker;->getInstance()Lcom/android/systemui/globalactions/util/FakeConditionChecker;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/globalactions/util/FakeConditionChecker;->reset()V

    goto :goto_0

    .line 168
    :pswitch_1
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 169
    invoke-static {}, Lcom/android/systemui/globalactions/util/FakeConditionChecker;->getInstance()Lcom/android/systemui/globalactions/util/FakeConditionChecker;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 170
    invoke-static {}, Lcom/android/systemui/globalactions/util/FakeConditionChecker;->getInstance()Lcom/android/systemui/globalactions/util/FakeConditionChecker;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/android/systemui/globalactions/util/FakeConditionChecker;->removeCondition(Ljava/lang/String;)V

    goto :goto_0

    .line 159
    :pswitch_2
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 160
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    .line 161
    invoke-static {}, Lcom/android/systemui/globalactions/util/FakeConditionChecker;->getInstance()Lcom/android/systemui/globalactions/util/FakeConditionChecker;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 162
    invoke-static {}, Lcom/android/systemui/globalactions/util/FakeConditionChecker;->getInstance()Lcom/android/systemui/globalactions/util/FakeConditionChecker;

    move-result-object p2

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p2, p0, p1}, Lcom/android/systemui/globalactions/util/FakeConditionChecker;->updateCondition(Ljava/lang/String;Ljava/lang/Boolean;)V

    goto :goto_0

    .line 151
    :pswitch_3
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 152
    invoke-static {}, Lcom/android/systemui/globalactions/presentation/features/FakeFeatures;->getInstance()Lcom/android/systemui/globalactions/presentation/features/FakeFeatures;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 153
    invoke-static {}, Lcom/android/systemui/globalactions/presentation/features/FakeFeatures;->getInstance()Lcom/android/systemui/globalactions/presentation/features/FakeFeatures;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/android/systemui/globalactions/presentation/features/FakeFeatures;->removeFeature(Ljava/lang/String;)V

    goto :goto_0

    .line 142
    :pswitch_4
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 143
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    .line 144
    invoke-static {}, Lcom/android/systemui/globalactions/presentation/features/FakeFeatures;->getInstance()Lcom/android/systemui/globalactions/presentation/features/FakeFeatures;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 145
    invoke-static {}, Lcom/android/systemui/globalactions/presentation/features/FakeFeatures;->getInstance()Lcom/android/systemui/globalactions/presentation/features/FakeFeatures;

    move-result-object p2

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p2, p0, p1}, Lcom/android/systemui/globalactions/presentation/features/FakeFeatures;->updateFeature(Ljava/lang/String;Ljava/lang/Boolean;)V

    goto :goto_0

    .line 138
    :pswitch_5
    invoke-static {}, Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialog;->globalactionForceShow()V

    :cond_1
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private handleVolumePanelApi(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 4

    .line 95
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/service/TestProtocolProvider;->parseVolumePanelApi(Ljava/lang/String;)Lcom/android/systemui/volume/service/TestProtocol$VolumePanelApi;

    move-result-object p1

    .line 97
    sget-object v0, Lcom/android/systemui/volume/service/TestProtocolProvider$1;->$SwitchMap$com$android$systemui$volume$service$TestProtocol$VolumePanelApi:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_4

    const/4 p2, 0x2

    if-eq p1, p2, :cond_1

    const/4 p2, 0x3

    if-eq p1, p2, :cond_0

    goto :goto_0

    .line 123
    :cond_0
    new-instance p1, Lcom/android/systemui/volume/VolumeDependency;

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/android/systemui/volume/VolumeDependency;-><init>(Landroid/content/Context;)V

    const-class p0, Lcom/android/systemui/volume/testinfra/FakeVolumeInfraMediator;

    invoke-virtual {p1, p0}, Lcom/android/systemui/volume/VolumeDependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/volume/testinfra/FakeVolumeInfraMediator;

    if-eqz p0, :cond_5

    .line 125
    invoke-virtual {p0}, Lcom/android/systemui/volume/testinfra/FakeVolumeInfraMediator;->reset()V

    goto :goto_0

    .line 105
    :cond_1
    new-instance p1, Lcom/android/systemui/volume/VolumeDependency;

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/android/systemui/volume/VolumeDependency;-><init>(Landroid/content/Context;)V

    const-class p0, Lcom/android/systemui/volume/testinfra/FakeVolumeInfraMediator;

    invoke-virtual {p1, p0}, Lcom/android/systemui/volume/VolumeDependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/volume/testinfra/FakeVolumeInfraMediator;

    const-string p1, "key_string_type"

    .line 107
    invoke-virtual {p3, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    .line 109
    invoke-virtual {p3}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 110
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 111
    invoke-virtual {p3, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    :cond_3
    if-eqz p0, :cond_5

    .line 117
    invoke-virtual {p0, p2, v0}, Lcom/android/systemui/volume/testinfra/FakeVolumeInfraMediator;->updateCondition(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 99
    :cond_4
    new-instance p1, Lcom/android/systemui/volume/testinfra/TimeTravelDebugActionTrigger;

    new-instance p3, Lcom/android/systemui/volume/VolumeDependency;

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {p3, p0}, Lcom/android/systemui/volume/VolumeDependency;-><init>(Landroid/content/Context;)V

    invoke-direct {p1, p3}, Lcom/android/systemui/volume/testinfra/TimeTravelDebugActionTrigger;-><init>(Lcom/android/systemui/volume/VolumeDependency;)V

    .line 100
    invoke-virtual {p1, p2}, Lcom/android/systemui/volume/testinfra/TimeTravelDebugActionTrigger;->handleActionString(Ljava/lang/String;)V

    :cond_5
    :goto_0
    return-void
.end method

.method private parseGlobalActionsApi(Ljava/lang/String;)Lcom/android/systemui/volume/service/TestProtocol$GlobalActionsApi;
    .locals 1

    .line 201
    sget-object p0, Lcom/android/systemui/volume/service/TestProtocol$GlobalActionsApi;->none:Lcom/android/systemui/volume/service/TestProtocol$GlobalActionsApi;

    .line 204
    :try_start_0
    invoke-static {p1}, Lcom/android/systemui/volume/service/TestProtocol$GlobalActionsApi;->valueOf(Ljava/lang/String;)Lcom/android/systemui/volume/service/TestProtocol$GlobalActionsApi;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 206
    sget-object v0, Lcom/android/systemui/volume/service/TestProtocolProvider;->TAG:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-object p0
.end method

.method private parseModule(Ljava/lang/String;)Lcom/android/systemui/volume/service/TestProtocol$Module;
    .locals 1

    .line 189
    sget-object p0, Lcom/android/systemui/volume/service/TestProtocol$Module;->none:Lcom/android/systemui/volume/service/TestProtocol$Module;

    .line 192
    :try_start_0
    invoke-static {p1}, Lcom/android/systemui/volume/service/TestProtocol$Module;->valueOf(Ljava/lang/String;)Lcom/android/systemui/volume/service/TestProtocol$Module;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 194
    sget-object v0, Lcom/android/systemui/volume/service/TestProtocolProvider;->TAG:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-object p0
.end method

.method private parseVolumePanelApi(Ljava/lang/String;)Lcom/android/systemui/volume/service/TestProtocol$VolumePanelApi;
    .locals 1

    .line 213
    sget-object p0, Lcom/android/systemui/volume/service/TestProtocol$VolumePanelApi;->none:Lcom/android/systemui/volume/service/TestProtocol$VolumePanelApi;

    .line 216
    :try_start_0
    invoke-static {p1}, Lcom/android/systemui/volume/service/TestProtocol$VolumePanelApi;->valueOf(Ljava/lang/String;)Lcom/android/systemui/volume/service/TestProtocol$VolumePanelApi;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 218
    sget-object v0, Lcom/android/systemui/volume/service/TestProtocolProvider;->TAG:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-object p0
.end method


# virtual methods
.method public call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 4
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 63
    sget-boolean v0, Lcom/android/systemui/volume/service/TestProtocolProvider;->SYSUI_IS_USER_BUILD:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 67
    :cond_0
    sget-object v0, Lcom/android/systemui/volume/service/TestProtocolProvider;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "call: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, ":"

    .line 69
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    .line 70
    aget-object v0, p1, v0

    const/4 v2, 0x1

    .line 71
    aget-object p1, p1, v2

    .line 73
    invoke-direct {p0, v0}, Lcom/android/systemui/volume/service/TestProtocolProvider;->parseModule(Ljava/lang/String;)Lcom/android/systemui/volume/service/TestProtocol$Module;

    move-result-object v0

    .line 75
    sget-object v3, Lcom/android/systemui/volume/service/TestProtocolProvider$1;->$SwitchMap$com$android$systemui$volume$service$TestProtocol$Module:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v3, v0

    if-eq v0, v2, :cond_2

    const/4 v2, 0x2

    if-eq v0, v2, :cond_3

    const/4 v2, 0x3

    if-eq v0, v2, :cond_1

    goto :goto_0

    .line 86
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/volume/service/TestProtocolProvider;->handleVolumePanelApi(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    .line 77
    :cond_2
    invoke-direct {p0, p1, p3}, Lcom/android/systemui/volume/service/TestProtocolProvider;->handleGlobalActionsApi(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_3
    :goto_0
    return-object v1
.end method

.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 0
    .param p1    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # [Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 p0, 0x0

    return p0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 0
    .param p1    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 0
    .param p1    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/content/ContentValues;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public onCreate()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 0
    .param p1    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # [Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # [Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 0
    .param p1    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/content/ContentValues;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # [Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 p0, 0x0

    return p0
.end method
