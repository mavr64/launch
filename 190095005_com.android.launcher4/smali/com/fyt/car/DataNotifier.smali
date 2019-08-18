.class public Lcom/fyt/car/DataNotifier;
.super Ljava/lang/Object;
.source "DataNotifier.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final HANDLER:Landroid/os/Handler;


# instance fields
.field private final REFRESHERS:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/fyt/car/IUiRefresher;",
            ">;"
        }
    .end annotation
.end field

.field private mByts:[B

.field private mFlts:[F

.field private mInts:[I

.field private mLngs:[J

.field private mStrs:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 10
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/fyt/car/DataNotifier;->HANDLER:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/fyt/car/DataNotifier;->REFRESHERS:Ljava/util/ArrayList;

    .line 8
    return-void
.end method


# virtual methods
.method public declared-synchronized addUiRefresher(Lcom/fyt/car/IUiRefresher;Z)V
    .locals 6
    .param p1, "refresher"    # Lcom/fyt/car/IUiRefresher;
    .param p2, "refresh"    # Z

    .prologue
    .line 48
    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/fyt/car/DataNotifier;->REFRESHERS:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 49
    iget-object v0, p0, Lcom/fyt/car/DataNotifier;->REFRESHERS:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 50
    if-eqz p2, :cond_0

    .line 51
    iget-object v1, p0, Lcom/fyt/car/DataNotifier;->mInts:[I

    iget-object v2, p0, Lcom/fyt/car/DataNotifier;->mLngs:[J

    iget-object v3, p0, Lcom/fyt/car/DataNotifier;->mFlts:[F

    iget-object v4, p0, Lcom/fyt/car/DataNotifier;->mStrs:[Ljava/lang/String;

    iget-object v5, p0, Lcom/fyt/car/DataNotifier;->mByts:[B

    move-object v0, p1

    invoke-interface/range {v0 .. v5}, Lcom/fyt/car/IUiRefresher;->onRefresh([I[J[F[Ljava/lang/String;[B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    :cond_0
    monitor-exit p0

    return-void

    .line 48
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized clearUiRefresher(Lcom/fyt/car/IUiRefresher;)V
    .locals 1
    .param p1, "refresher"    # Lcom/fyt/car/IUiRefresher;

    .prologue
    .line 69
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/fyt/car/DataNotifier;->REFRESHERS:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 70
    monitor-exit p0

    return-void

    .line 69
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized refrseh(Lcom/fyt/car/IUiRefresher;)V
    .locals 6
    .param p1, "refresher"    # Lcom/fyt/car/IUiRefresher;

    .prologue
    .line 57
    monitor-enter p0

    if-eqz p1, :cond_0

    .line 58
    :try_start_0
    iget-object v1, p0, Lcom/fyt/car/DataNotifier;->mInts:[I

    iget-object v2, p0, Lcom/fyt/car/DataNotifier;->mLngs:[J

    iget-object v3, p0, Lcom/fyt/car/DataNotifier;->mFlts:[F

    iget-object v4, p0, Lcom/fyt/car/DataNotifier;->mStrs:[Ljava/lang/String;

    iget-object v5, p0, Lcom/fyt/car/DataNotifier;->mByts:[B

    move-object v0, p1

    invoke-interface/range {v0 .. v5}, Lcom/fyt/car/IUiRefresher;->onRefresh([I[J[F[Ljava/lang/String;[B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 60
    :cond_0
    monitor-exit p0

    return-void

    .line 57
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized removeUiRefresher(Lcom/fyt/car/IUiRefresher;)V
    .locals 1
    .param p1, "refresher"    # Lcom/fyt/car/IUiRefresher;

    .prologue
    .line 63
    monitor-enter p0

    if-eqz p1, :cond_0

    .line 64
    :try_start_0
    iget-object v0, p0, Lcom/fyt/car/DataNotifier;->REFRESHERS:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    :cond_0
    monitor-exit p0

    return-void

    .line 63
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized run()V
    .locals 7

    .prologue
    .line 74
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/fyt/car/DataNotifier;->REFRESHERS:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_0

    .line 77
    monitor-exit p0

    return-void

    .line 74
    :cond_0
    :try_start_1
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fyt/car/IUiRefresher;

    .line 75
    .local v0, "refresher":Lcom/fyt/car/IUiRefresher;
    iget-object v1, p0, Lcom/fyt/car/DataNotifier;->mInts:[I

    iget-object v2, p0, Lcom/fyt/car/DataNotifier;->mLngs:[J

    iget-object v3, p0, Lcom/fyt/car/DataNotifier;->mFlts:[F

    iget-object v4, p0, Lcom/fyt/car/DataNotifier;->mStrs:[Ljava/lang/String;

    iget-object v5, p0, Lcom/fyt/car/DataNotifier;->mByts:[B

    invoke-interface/range {v0 .. v5}, Lcom/fyt/car/IUiRefresher;->onRefresh([I[J[F[Ljava/lang/String;[B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 74
    .end local v0    # "refresher":Lcom/fyt/car/IUiRefresher;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized set([I[J[F[Ljava/lang/String;[B)V
    .locals 2
    .param p1, "ints"    # [I
    .param p2, "lngs"    # [J
    .param p3, "flts"    # [F
    .param p4, "strs"    # [Ljava/lang/String;
    .param p5, "byts"    # [B

    .prologue
    .line 20
    monitor-enter p0

    const/4 v0, 0x1

    .line 21
    .local v0, "equal":Z
    if-eqz v0, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/fyt/car/DataNotifier;->mInts:[I

    invoke-static {v1, p1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 22
    const/4 v0, 0x0

    .line 24
    :cond_0
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/fyt/car/DataNotifier;->mFlts:[F

    invoke-static {v1, p3}, Ljava/util/Arrays;->equals([F[F)Z

    move-result v1

    if-nez v1, :cond_1

    .line 25
    const/4 v0, 0x0

    .line 27
    :cond_1
    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/fyt/car/DataNotifier;->mStrs:[Ljava/lang/String;

    invoke-static {v1, p4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 28
    const/4 v0, 0x0

    .line 30
    :cond_2
    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/fyt/car/DataNotifier;->mByts:[B

    invoke-static {v1, p5}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-nez v1, :cond_3

    .line 31
    const/4 v0, 0x0

    .line 33
    :cond_3
    if-eqz v0, :cond_4

    iget-object v1, p0, Lcom/fyt/car/DataNotifier;->mLngs:[J

    invoke-static {v1, p2}, Ljava/util/Arrays;->equals([J[J)Z

    move-result v1

    if-nez v1, :cond_4

    .line 34
    const/4 v0, 0x0

    .line 37
    :cond_4
    iput-object p1, p0, Lcom/fyt/car/DataNotifier;->mInts:[I

    .line 38
    iput-object p3, p0, Lcom/fyt/car/DataNotifier;->mFlts:[F

    .line 39
    iput-object p4, p0, Lcom/fyt/car/DataNotifier;->mStrs:[Ljava/lang/String;

    .line 40
    iput-object p5, p0, Lcom/fyt/car/DataNotifier;->mByts:[B

    .line 41
    iput-object p2, p0, Lcom/fyt/car/DataNotifier;->mLngs:[J

    .line 42
    if-nez v0, :cond_5

    .line 43
    sget-object v1, Lcom/fyt/car/DataNotifier;->HANDLER:Landroid/os/Handler;

    invoke-virtual {v1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    :cond_5
    monitor-exit p0

    return-void

    .line 20
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method
