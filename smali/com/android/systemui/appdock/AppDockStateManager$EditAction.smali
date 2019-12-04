.class public final enum Lcom/android/systemui/appdock/AppDockStateManager$EditAction;
.super Ljava/lang/Enum;
.source "AppDockStateManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/appdock/AppDockStateManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "EditAction"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/systemui/appdock/AppDockStateManager$EditAction;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/systemui/appdock/AppDockStateManager$EditAction;

.field public static final enum ACTION_EDIT_CANCEL:Lcom/android/systemui/appdock/AppDockStateManager$EditAction;

.field public static final enum ACTION_EDIT_LIST_CHANGE:Lcom/android/systemui/appdock/AppDockStateManager$EditAction;

.field public static final enum ACTION_EDIT_SAVE:Lcom/android/systemui/appdock/AppDockStateManager$EditAction;

.field public static final enum ACTION_EDIT_START:Lcom/android/systemui/appdock/AppDockStateManager$EditAction;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 9
    new-instance v0, Lcom/android/systemui/appdock/AppDockStateManager$EditAction;

    const/4 v1, 0x0

    const-string v2, "ACTION_EDIT_START"

    invoke-direct {v0, v2, v1}, Lcom/android/systemui/appdock/AppDockStateManager$EditAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/appdock/AppDockStateManager$EditAction;->ACTION_EDIT_START:Lcom/android/systemui/appdock/AppDockStateManager$EditAction;

    new-instance v0, Lcom/android/systemui/appdock/AppDockStateManager$EditAction;

    const/4 v2, 0x1

    const-string v3, "ACTION_EDIT_CANCEL"

    invoke-direct {v0, v3, v2}, Lcom/android/systemui/appdock/AppDockStateManager$EditAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/appdock/AppDockStateManager$EditAction;->ACTION_EDIT_CANCEL:Lcom/android/systemui/appdock/AppDockStateManager$EditAction;

    new-instance v0, Lcom/android/systemui/appdock/AppDockStateManager$EditAction;

    const/4 v3, 0x2

    const-string v4, "ACTION_EDIT_SAVE"

    invoke-direct {v0, v4, v3}, Lcom/android/systemui/appdock/AppDockStateManager$EditAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/appdock/AppDockStateManager$EditAction;->ACTION_EDIT_SAVE:Lcom/android/systemui/appdock/AppDockStateManager$EditAction;

    new-instance v0, Lcom/android/systemui/appdock/AppDockStateManager$EditAction;

    const/4 v4, 0x3

    const-string v5, "ACTION_EDIT_LIST_CHANGE"

    invoke-direct {v0, v5, v4}, Lcom/android/systemui/appdock/AppDockStateManager$EditAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/appdock/AppDockStateManager$EditAction;->ACTION_EDIT_LIST_CHANGE:Lcom/android/systemui/appdock/AppDockStateManager$EditAction;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/android/systemui/appdock/AppDockStateManager$EditAction;

    sget-object v5, Lcom/android/systemui/appdock/AppDockStateManager$EditAction;->ACTION_EDIT_START:Lcom/android/systemui/appdock/AppDockStateManager$EditAction;

    aput-object v5, v0, v1

    sget-object v1, Lcom/android/systemui/appdock/AppDockStateManager$EditAction;->ACTION_EDIT_CANCEL:Lcom/android/systemui/appdock/AppDockStateManager$EditAction;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/systemui/appdock/AppDockStateManager$EditAction;->ACTION_EDIT_SAVE:Lcom/android/systemui/appdock/AppDockStateManager$EditAction;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/systemui/appdock/AppDockStateManager$EditAction;->ACTION_EDIT_LIST_CHANGE:Lcom/android/systemui/appdock/AppDockStateManager$EditAction;

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/systemui/appdock/AppDockStateManager$EditAction;->$VALUES:[Lcom/android/systemui/appdock/AppDockStateManager$EditAction;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 9
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/systemui/appdock/AppDockStateManager$EditAction;
    .locals 1

    .line 9
    const-class v0, Lcom/android/systemui/appdock/AppDockStateManager$EditAction;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/appdock/AppDockStateManager$EditAction;

    return-object p0
.end method

.method public static values()[Lcom/android/systemui/appdock/AppDockStateManager$EditAction;
    .locals 1

    .line 9
    sget-object v0, Lcom/android/systemui/appdock/AppDockStateManager$EditAction;->$VALUES:[Lcom/android/systemui/appdock/AppDockStateManager$EditAction;

    invoke-virtual {v0}, [Lcom/android/systemui/appdock/AppDockStateManager$EditAction;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/systemui/appdock/AppDockStateManager$EditAction;

    return-object v0
.end method
