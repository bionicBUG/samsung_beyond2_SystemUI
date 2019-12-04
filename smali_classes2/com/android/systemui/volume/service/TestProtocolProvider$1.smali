.class synthetic Lcom/android/systemui/volume/service/TestProtocolProvider$1;
.super Ljava/lang/Object;
.source "TestProtocolProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/volume/service/TestProtocolProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$android$systemui$volume$service$TestProtocol$GlobalActionsApi:[I

.field static final synthetic $SwitchMap$com$android$systemui$volume$service$TestProtocol$Module:[I

.field static final synthetic $SwitchMap$com$android$systemui$volume$service$TestProtocol$VolumePanelApi:[I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 135
    invoke-static {}, Lcom/android/systemui/volume/service/TestProtocol$GlobalActionsApi;->values()[Lcom/android/systemui/volume/service/TestProtocol$GlobalActionsApi;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/android/systemui/volume/service/TestProtocolProvider$1;->$SwitchMap$com$android$systemui$volume$service$TestProtocol$GlobalActionsApi:[I

    const/4 v0, 0x1

    :try_start_0
    sget-object v1, Lcom/android/systemui/volume/service/TestProtocolProvider$1;->$SwitchMap$com$android$systemui$volume$service$TestProtocol$GlobalActionsApi:[I

    sget-object v2, Lcom/android/systemui/volume/service/TestProtocol$GlobalActionsApi;->show:Lcom/android/systemui/volume/service/TestProtocol$GlobalActionsApi;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aput v0, v1, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v1, 0x2

    :try_start_1
    sget-object v2, Lcom/android/systemui/volume/service/TestProtocolProvider$1;->$SwitchMap$com$android$systemui$volume$service$TestProtocol$GlobalActionsApi:[I

    sget-object v3, Lcom/android/systemui/volume/service/TestProtocol$GlobalActionsApi;->hide:Lcom/android/systemui/volume/service/TestProtocol$GlobalActionsApi;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aput v1, v2, v3
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    const/4 v2, 0x3

    :try_start_2
    sget-object v3, Lcom/android/systemui/volume/service/TestProtocolProvider$1;->$SwitchMap$com$android$systemui$volume$service$TestProtocol$GlobalActionsApi:[I

    sget-object v4, Lcom/android/systemui/volume/service/TestProtocol$GlobalActionsApi;->add_feature:Lcom/android/systemui/volume/service/TestProtocol$GlobalActionsApi;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :try_start_3
    sget-object v3, Lcom/android/systemui/volume/service/TestProtocolProvider$1;->$SwitchMap$com$android$systemui$volume$service$TestProtocol$GlobalActionsApi:[I

    sget-object v4, Lcom/android/systemui/volume/service/TestProtocol$GlobalActionsApi;->remove_feature:Lcom/android/systemui/volume/service/TestProtocol$GlobalActionsApi;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    const/4 v5, 0x4

    aput v5, v3, v4
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    :try_start_4
    sget-object v3, Lcom/android/systemui/volume/service/TestProtocolProvider$1;->$SwitchMap$com$android$systemui$volume$service$TestProtocol$GlobalActionsApi:[I

    sget-object v4, Lcom/android/systemui/volume/service/TestProtocol$GlobalActionsApi;->add_condition:Lcom/android/systemui/volume/service/TestProtocol$GlobalActionsApi;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    const/4 v5, 0x5

    aput v5, v3, v4
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    :try_start_5
    sget-object v3, Lcom/android/systemui/volume/service/TestProtocolProvider$1;->$SwitchMap$com$android$systemui$volume$service$TestProtocol$GlobalActionsApi:[I

    sget-object v4, Lcom/android/systemui/volume/service/TestProtocol$GlobalActionsApi;->remove_condition:Lcom/android/systemui/volume/service/TestProtocol$GlobalActionsApi;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    const/4 v5, 0x6

    aput v5, v3, v4
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    :try_start_6
    sget-object v3, Lcom/android/systemui/volume/service/TestProtocolProvider$1;->$SwitchMap$com$android$systemui$volume$service$TestProtocol$GlobalActionsApi:[I

    sget-object v4, Lcom/android/systemui/volume/service/TestProtocol$GlobalActionsApi;->reset:Lcom/android/systemui/volume/service/TestProtocol$GlobalActionsApi;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    const/4 v5, 0x7

    aput v5, v3, v4
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    .line 97
    :catch_6
    invoke-static {}, Lcom/android/systemui/volume/service/TestProtocol$VolumePanelApi;->values()[Lcom/android/systemui/volume/service/TestProtocol$VolumePanelApi;

    move-result-object v3

    array-length v3, v3

    new-array v3, v3, [I

    sput-object v3, Lcom/android/systemui/volume/service/TestProtocolProvider$1;->$SwitchMap$com$android$systemui$volume$service$TestProtocol$VolumePanelApi:[I

    :try_start_7
    sget-object v3, Lcom/android/systemui/volume/service/TestProtocolProvider$1;->$SwitchMap$com$android$systemui$volume$service$TestProtocol$VolumePanelApi:[I

    sget-object v4, Lcom/android/systemui/volume/service/TestProtocol$VolumePanelApi;->test:Lcom/android/systemui/volume/service/TestProtocol$VolumePanelApi;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aput v0, v3, v4
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_7

    :catch_7
    :try_start_8
    sget-object v3, Lcom/android/systemui/volume/service/TestProtocolProvider$1;->$SwitchMap$com$android$systemui$volume$service$TestProtocol$VolumePanelApi:[I

    sget-object v4, Lcom/android/systemui/volume/service/TestProtocol$VolumePanelApi;->condition:Lcom/android/systemui/volume/service/TestProtocol$VolumePanelApi;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aput v1, v3, v4
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_8

    :catch_8
    :try_start_9
    sget-object v3, Lcom/android/systemui/volume/service/TestProtocolProvider$1;->$SwitchMap$com$android$systemui$volume$service$TestProtocol$VolumePanelApi:[I

    sget-object v4, Lcom/android/systemui/volume/service/TestProtocol$VolumePanelApi;->reset:Lcom/android/systemui/volume/service/TestProtocol$VolumePanelApi;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_9

    .line 75
    :catch_9
    invoke-static {}, Lcom/android/systemui/volume/service/TestProtocol$Module;->values()[Lcom/android/systemui/volume/service/TestProtocol$Module;

    move-result-object v3

    array-length v3, v3

    new-array v3, v3, [I

    sput-object v3, Lcom/android/systemui/volume/service/TestProtocolProvider$1;->$SwitchMap$com$android$systemui$volume$service$TestProtocol$Module:[I

    :try_start_a
    sget-object v3, Lcom/android/systemui/volume/service/TestProtocolProvider$1;->$SwitchMap$com$android$systemui$volume$service$TestProtocol$Module:[I

    sget-object v4, Lcom/android/systemui/volume/service/TestProtocol$Module;->global_actions:Lcom/android/systemui/volume/service/TestProtocol$Module;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aput v0, v3, v4
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_a

    :catch_a
    :try_start_b
    sget-object v0, Lcom/android/systemui/volume/service/TestProtocolProvider$1;->$SwitchMap$com$android$systemui$volume$service$TestProtocol$Module:[I

    sget-object v3, Lcom/android/systemui/volume/service/TestProtocol$Module;->navigation_bar:Lcom/android/systemui/volume/service/TestProtocol$Module;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aput v1, v0, v3
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_b

    :catch_b
    :try_start_c
    sget-object v0, Lcom/android/systemui/volume/service/TestProtocolProvider$1;->$SwitchMap$com$android$systemui$volume$service$TestProtocol$Module:[I

    sget-object v1, Lcom/android/systemui/volume/service/TestProtocol$Module;->volume_panel:Lcom/android/systemui/volume/service/TestProtocol$Module;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v2, v0, v1
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_c

    :catch_c
    return-void
.end method
