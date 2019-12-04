.class final Lkotlin/coroutines/experimental/migration/ContextMigration;
.super Lkotlin/coroutines/AbstractCoroutineContextElement;
.source "CoroutinesMigration.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/coroutines/experimental/migration/ContextMigration$Key;
    }
.end annotation


# static fields
.field public static final Key:Lkotlin/coroutines/experimental/migration/ContextMigration$Key;


# instance fields
.field private final context:Lkotlin/coroutines/experimental/CoroutineContext;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lkotlin/coroutines/experimental/migration/ContextMigration$Key;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lkotlin/coroutines/experimental/migration/ContextMigration$Key;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lkotlin/coroutines/experimental/migration/ContextMigration;->Key:Lkotlin/coroutines/experimental/migration/ContextMigration$Key;

    return-void
.end method

.method public constructor <init>(Lkotlin/coroutines/experimental/CoroutineContext;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 93
    sget-object v0, Lkotlin/coroutines/experimental/migration/ContextMigration;->Key:Lkotlin/coroutines/experimental/migration/ContextMigration$Key;

    invoke-direct {p0, v0}, Lkotlin/coroutines/AbstractCoroutineContextElement;-><init>(Lkotlin/coroutines/CoroutineContext$Key;)V

    iput-object p1, p0, Lkotlin/coroutines/experimental/migration/ContextMigration;->context:Lkotlin/coroutines/experimental/CoroutineContext;

    return-void
.end method


# virtual methods
.method public final getContext()Lkotlin/coroutines/experimental/CoroutineContext;
    .locals 0

    .line 93
    iget-object p0, p0, Lkotlin/coroutines/experimental/migration/ContextMigration;->context:Lkotlin/coroutines/experimental/CoroutineContext;

    return-object p0
.end method
