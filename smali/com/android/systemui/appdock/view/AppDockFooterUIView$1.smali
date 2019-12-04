.class synthetic Lcom/android/systemui/appdock/view/AppDockFooterUIView$1;
.super Ljava/lang/Object;
.source "AppDockFooterUIView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/appdock/view/AppDockFooterUIView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$android$systemui$appdock$AppDockStateManager$EditAction:[I

.field static final synthetic $SwitchMap$com$android$systemui$appdock$view$AppDockFooterUIView$FooterState:[I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 142
    invoke-static {}, Lcom/android/systemui/appdock/view/AppDockFooterUIView$FooterState;->values()[Lcom/android/systemui/appdock/view/AppDockFooterUIView$FooterState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/android/systemui/appdock/view/AppDockFooterUIView$1;->$SwitchMap$com$android$systemui$appdock$view$AppDockFooterUIView$FooterState:[I

    const/4 v0, 0x1

    :try_start_0
    sget-object v1, Lcom/android/systemui/appdock/view/AppDockFooterUIView$1;->$SwitchMap$com$android$systemui$appdock$view$AppDockFooterUIView$FooterState:[I

    sget-object v2, Lcom/android/systemui/appdock/view/AppDockFooterUIView$FooterState;->FOOTER_STATE_LIST:Lcom/android/systemui/appdock/view/AppDockFooterUIView$FooterState;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aput v0, v1, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v1, 0x2

    :try_start_1
    sget-object v2, Lcom/android/systemui/appdock/view/AppDockFooterUIView$1;->$SwitchMap$com$android$systemui$appdock$view$AppDockFooterUIView$FooterState:[I

    sget-object v3, Lcom/android/systemui/appdock/view/AppDockFooterUIView$FooterState;->FOOTER_STATE_EXPANDED:Lcom/android/systemui/appdock/view/AppDockFooterUIView$FooterState;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aput v1, v2, v3
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    const/4 v2, 0x3

    :try_start_2
    sget-object v3, Lcom/android/systemui/appdock/view/AppDockFooterUIView$1;->$SwitchMap$com$android$systemui$appdock$view$AppDockFooterUIView$FooterState:[I

    sget-object v4, Lcom/android/systemui/appdock/view/AppDockFooterUIView$FooterState;->FOOTER_STATE_EDIT:Lcom/android/systemui/appdock/view/AppDockFooterUIView$FooterState;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    .line 125
    :catch_2
    invoke-static {}, Lcom/android/systemui/appdock/AppDockStateManager$EditAction;->values()[Lcom/android/systemui/appdock/AppDockStateManager$EditAction;

    move-result-object v3

    array-length v3, v3

    new-array v3, v3, [I

    sput-object v3, Lcom/android/systemui/appdock/view/AppDockFooterUIView$1;->$SwitchMap$com$android$systemui$appdock$AppDockStateManager$EditAction:[I

    :try_start_3
    sget-object v3, Lcom/android/systemui/appdock/view/AppDockFooterUIView$1;->$SwitchMap$com$android$systemui$appdock$AppDockStateManager$EditAction:[I

    sget-object v4, Lcom/android/systemui/appdock/AppDockStateManager$EditAction;->ACTION_EDIT_START:Lcom/android/systemui/appdock/AppDockStateManager$EditAction;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aput v0, v3, v4
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    :try_start_4
    sget-object v0, Lcom/android/systemui/appdock/view/AppDockFooterUIView$1;->$SwitchMap$com$android$systemui$appdock$AppDockStateManager$EditAction:[I

    sget-object v3, Lcom/android/systemui/appdock/AppDockStateManager$EditAction;->ACTION_EDIT_CANCEL:Lcom/android/systemui/appdock/AppDockStateManager$EditAction;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aput v1, v0, v3
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    :try_start_5
    sget-object v0, Lcom/android/systemui/appdock/view/AppDockFooterUIView$1;->$SwitchMap$com$android$systemui$appdock$AppDockStateManager$EditAction:[I

    sget-object v1, Lcom/android/systemui/appdock/AppDockStateManager$EditAction;->ACTION_EDIT_SAVE:Lcom/android/systemui/appdock/AppDockStateManager$EditAction;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    return-void
.end method
