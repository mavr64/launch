.class Lcom/android/launcher4/PagedView$SavedState$1;
.super Ljava/lang/Object;
.source "PagedView.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher4/PagedView$SavedState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/android/launcher4/PagedView$SavedState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 2469
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/android/launcher4/PagedView$SavedState;
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 2471
    new-instance v0, Lcom/android/launcher4/PagedView$SavedState;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/android/launcher4/PagedView$SavedState;-><init>(Landroid/os/Parcel;Lcom/android/launcher4/PagedView$SavedState;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/android/launcher4/PagedView$SavedState$1;->createFromParcel(Landroid/os/Parcel;)Lcom/android/launcher4/PagedView$SavedState;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/android/launcher4/PagedView$SavedState;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 2475
    new-array v0, p1, [Lcom/android/launcher4/PagedView$SavedState;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/android/launcher4/PagedView$SavedState$1;->newArray(I)[Lcom/android/launcher4/PagedView$SavedState;

    move-result-object v0

    return-object v0
.end method
