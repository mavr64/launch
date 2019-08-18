.class Lcom/android/launcher4/LauncherModel$16;
.super Ljava/lang/Object;
.source "LauncherModel.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher4/LauncherModel;->getAppNameComparator()Ljava/util/Comparator;
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


# instance fields
.field private final synthetic val$collator:Ljava/text/Collator;


# direct methods
.method constructor <init>(Ljava/text/Collator;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher4/LauncherModel$16;->val$collator:Ljava/text/Collator;

    .line 3521
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Lcom/android/launcher4/AppInfo;Lcom/android/launcher4/AppInfo;)I
    .locals 4
    .param p1, "a"    # Lcom/android/launcher4/AppInfo;
    .param p2, "b"    # Lcom/android/launcher4/AppInfo;

    .prologue
    .line 3523
    iget-object v1, p0, Lcom/android/launcher4/LauncherModel$16;->val$collator:Ljava/text/Collator;

    iget-object v2, p1, Lcom/android/launcher4/AppInfo;->title:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 3524
    iget-object v3, p2, Lcom/android/launcher4/AppInfo;->title:Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 3523
    invoke-virtual {v1, v2, v3}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 3525
    .local v0, "result":I
    if-nez v0, :cond_0

    .line 3526
    iget-object v1, p1, Lcom/android/launcher4/AppInfo;->componentName:Landroid/content/ComponentName;

    iget-object v2, p2, Lcom/android/launcher4/AppInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Landroid/content/ComponentName;->compareTo(Landroid/content/ComponentName;)I

    move-result v0

    .line 3528
    :cond_0
    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 1
    check-cast p1, Lcom/android/launcher4/AppInfo;

    check-cast p2, Lcom/android/launcher4/AppInfo;

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher4/LauncherModel$16;->compare(Lcom/android/launcher4/AppInfo;Lcom/android/launcher4/AppInfo;)I

    move-result v0

    return v0
.end method
