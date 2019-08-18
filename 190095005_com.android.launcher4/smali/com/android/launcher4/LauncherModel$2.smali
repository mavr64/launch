.class Lcom/android/launcher4/LauncherModel$2;
.super Ljava/lang/Object;
.source "LauncherModel.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher4/LauncherModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/android/launcher4/AppInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 3533
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public final compare(Lcom/android/launcher4/AppInfo;Lcom/android/launcher4/AppInfo;)I
    .locals 4
    .param p1, "a"    # Lcom/android/launcher4/AppInfo;
    .param p2, "b"    # Lcom/android/launcher4/AppInfo;

    .prologue
    .line 3535
    iget-wide v0, p1, Lcom/android/launcher4/AppInfo;->firstInstallTime:J

    iget-wide v2, p2, Lcom/android/launcher4/AppInfo;->firstInstallTime:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 3536
    const/4 v0, 0x1

    .line 3539
    :goto_0
    return v0

    .line 3537
    :cond_0
    iget-wide v0, p1, Lcom/android/launcher4/AppInfo;->firstInstallTime:J

    iget-wide v2, p2, Lcom/android/launcher4/AppInfo;->firstInstallTime:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 3538
    const/4 v0, -0x1

    goto :goto_0

    .line 3539
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 1
    check-cast p1, Lcom/android/launcher4/AppInfo;

    check-cast p2, Lcom/android/launcher4/AppInfo;

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher4/LauncherModel$2;->compare(Lcom/android/launcher4/AppInfo;Lcom/android/launcher4/AppInfo;)I

    move-result v0

    return v0
.end method
