.class public Lcom/android/systemui/util/SimpleAsyncTask;
.super Landroid/os/AsyncTask;
.source "SimpleAsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Runnable;",
        "Ljava/lang/Void;",
        "Ljava/lang/Runnable;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method public static getNewInstance()Lcom/android/systemui/util/SimpleAsyncTask;
    .locals 1

    .line 10
    new-instance v0, Lcom/android/systemui/util/SimpleAsyncTask;

    invoke-direct {v0}, Lcom/android/systemui/util/SimpleAsyncTask;-><init>()V

    return-object v0
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 5
    check-cast p1, [Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Lcom/android/systemui/util/SimpleAsyncTask;->doInBackground([Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object p0

    return-object p0
.end method

.method protected varargs doInBackground([Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 1

    if-eqz p1, :cond_0

    .line 16
    array-length p0, p1

    if-lez p0, :cond_0

    const/4 p0, 0x0

    .line 17
    aget-object p0, p1, p0

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    .line 18
    array-length p0, p1

    const/4 v0, 0x1

    if-le p0, v0, :cond_0

    .line 19
    aget-object p0, p1, v0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 5
    check-cast p1, Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Lcom/android/systemui/util/SimpleAsyncTask;->onPostExecute(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Runnable;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 29
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method public varargs submit([Ljava/lang/Runnable;)V
    .locals 1

    .line 34
    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-virtual {p0, v0, p1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method
