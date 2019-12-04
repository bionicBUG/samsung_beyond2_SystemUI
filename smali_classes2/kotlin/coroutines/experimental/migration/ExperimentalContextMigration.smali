.class final Lkotlin/coroutines/experimental/migration/ExperimentalContextMigration;
.super Lkotlin/coroutines/experimental/AbstractCoroutineContextElement;
.source "CoroutinesMigration.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/coroutines/experimental/migration/ExperimentalContextMigration$Key;
    }
.end annotation


# static fields
.field public static final Key:Lkotlin/coroutines/experimental/migration/ExperimentalContextMigration$Key;


# instance fields
.field private final context:Lkotlin/coroutines/CoroutineContext;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lkotlin/coroutines/experimental/migration/ExperimentalContextMigration$Key;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lkotlin/coroutines/experimental/migration/ExperimentalContextMigration$Key;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lkotlin/coroutines/experimental/migration/ExperimentalContextMigration;->Key:Lkotlin/coroutines/experimental/migration/ExperimentalContextMigration$Key;

    return-void
.end method

.method public constructor <init>(Lkotlin/coroutines/CoroutineContext;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 89
    sget-object v0, Lkotlin/coroutines/experimental/migration/ExperimentalContextMigration;->Key:Lkotlin/coroutines/experimental/migration/ExperimentalContextMigration$Key;

    invoke-direct {p0, v0}, Lkotlin/coroutines/experimental/AbstractCoroutineContextElement;-><init>(Lkotlin/coroutines/experimental/CoroutineContext$Key;)V

    iput-object p1, p0, Lkotlin/coroutines/experimental/migration/ExperimentalContextMigration;->context:Lkotlin/coroutines/CoroutineContext;

    return-void
.end method


# virtual methods
.method public final getContext()Lkotlin/coroutines/CoroutineContext;
    .locals 0

    .line 89
    iget-object p0, p0, Lkotlin/coroutines/experimental/migration/ExperimentalContextMigration;->context:Lkotlin/coroutines/CoroutineContext;

    return-object p0
.end method
