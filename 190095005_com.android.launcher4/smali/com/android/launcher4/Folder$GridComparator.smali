.class Lcom/android/launcher4/Folder$GridComparator;
.super Ljava/lang/Object;
.source "Folder.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher4/Folder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GridComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/android/launcher4/ShortcutInfo;",
        ">;"
    }
.end annotation


# instance fields
.field mNumCols:I

.field final synthetic this$0:Lcom/android/launcher4/Folder;


# direct methods
.method public constructor <init>(Lcom/android/launcher4/Folder;I)V
    .locals 0
    .param p2, "numCols"    # I

    .prologue
    .line 336
    iput-object p1, p0, Lcom/android/launcher4/Folder$GridComparator;->this$0:Lcom/android/launcher4/Folder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 337
    iput p2, p0, Lcom/android/launcher4/Folder$GridComparator;->mNumCols:I

    .line 338
    return-void
.end method


# virtual methods
.method public compare(Lcom/android/launcher4/ShortcutInfo;Lcom/android/launcher4/ShortcutInfo;)I
    .locals 4
    .param p1, "lhs"    # Lcom/android/launcher4/ShortcutInfo;
    .param p2, "rhs"    # Lcom/android/launcher4/ShortcutInfo;

    .prologue
    .line 342
    iget v2, p1, Lcom/android/launcher4/ShortcutInfo;->cellY:I

    iget v3, p0, Lcom/android/launcher4/Folder$GridComparator;->mNumCols:I

    mul-int/2addr v2, v3

    iget v3, p1, Lcom/android/launcher4/ShortcutInfo;->cellX:I

    add-int v0, v2, v3

    .line 343
    .local v0, "lhIndex":I
    iget v2, p2, Lcom/android/launcher4/ShortcutInfo;->cellY:I

    iget v3, p0, Lcom/android/launcher4/Folder$GridComparator;->mNumCols:I

    mul-int/2addr v2, v3

    iget v3, p2, Lcom/android/launcher4/ShortcutInfo;->cellX:I

    add-int v1, v2, v3

    .line 344
    .local v1, "rhIndex":I
    sub-int v2, v0, v1

    return v2
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 1
    check-cast p1, Lcom/android/launcher4/ShortcutInfo;

    check-cast p2, Lcom/android/launcher4/ShortcutInfo;

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher4/Folder$GridComparator;->compare(Lcom/android/launcher4/ShortcutInfo;Lcom/android/launcher4/ShortcutInfo;)I

    move-result v0

    return v0
.end method
