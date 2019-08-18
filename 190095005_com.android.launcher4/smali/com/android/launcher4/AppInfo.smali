.class Lcom/android/launcher4/AppInfo;
.super Lcom/android/launcher4/ItemInfo;
.source "AppInfo.java"


# static fields
.field static final DOWNLOADED_FLAG:I = 0x1

.field private static final TAG:Ljava/lang/String; = "Launcher3.AppInfo"

.field static final UPDATED_SYSTEM_APP_FLAG:I = 0x2


# instance fields
.field componentName:Landroid/content/ComponentName;

.field firstInstallTime:J

.field flags:I

.field iconBitmap:Landroid/graphics/Bitmap;

.field intent:Landroid/content/Intent;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/android/launcher4/ItemInfo;-><init>()V

    .line 57
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher4/AppInfo;->flags:I

    .line 60
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/launcher4/AppInfo;->itemType:I

    .line 61
    return-void
.end method

.method public constructor <init>(Landroid/content/pm/PackageManager;Landroid/content/pm/ResolveInfo;Lcom/android/launcher4/IconCache;Ljava/util/HashMap;)V
    .locals 6
    .param p1, "pm"    # Landroid/content/pm/PackageManager;
    .param p2, "info"    # Landroid/content/pm/ResolveInfo;
    .param p3, "iconCache"    # Lcom/android/launcher4/IconCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageManager;",
            "Landroid/content/pm/ResolveInfo;",
            "Lcom/android/launcher4/IconCache;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/CharSequence;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p4, "labelCache":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Object;Ljava/lang/CharSequence;>;"
    const/4 v3, 0x0

    .line 70
    invoke-direct {p0}, Lcom/android/launcher4/ItemInfo;-><init>()V

    .line 57
    iput v3, p0, Lcom/android/launcher4/AppInfo;->flags:I

    .line 72
    iget-object v3, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 74
    .local v1, "packageName":Ljava/lang/String;
    new-instance v3, Landroid/content/ComponentName;

    iget-object v4, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v3, v1, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/android/launcher4/AppInfo;->componentName:Landroid/content/ComponentName;

    .line 75
    const-wide/16 v4, -0x1

    iput-wide v4, p0, Lcom/android/launcher4/AppInfo;->container:J

    .line 76
    iget-object v3, p0, Lcom/android/launcher4/AppInfo;->componentName:Landroid/content/ComponentName;

    .line 77
    const/high16 v4, 0x10200000

    .line 76
    invoke-virtual {p0, v3, v4}, Lcom/android/launcher4/AppInfo;->setActivity(Landroid/content/ComponentName;I)V

    .line 80
    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {p1, v1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 81
    .local v2, "pi":Landroid/content/pm/PackageInfo;
    invoke-static {v2}, Lcom/android/launcher4/AppInfo;->initFlags(Landroid/content/pm/PackageInfo;)I

    move-result v3

    iput v3, p0, Lcom/android/launcher4/AppInfo;->flags:I

    .line 82
    invoke-static {v2}, Lcom/android/launcher4/AppInfo;->initFirstInstallTime(Landroid/content/pm/PackageInfo;)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/launcher4/AppInfo;->firstInstallTime:J
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 87
    .end local v2    # "pi":Landroid/content/pm/PackageInfo;
    :goto_0
    invoke-virtual {p3, p0, p2, p4}, Lcom/android/launcher4/IconCache;->getTitleAndIcon(Lcom/android/launcher4/AppInfo;Landroid/content/pm/ResolveInfo;Ljava/util/HashMap;)V

    .line 88
    return-void

    .line 83
    :catch_0
    move-exception v0

    .line 84
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v3, "Launcher3.AppInfo"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "PackageManager.getApplicationInfo failed for "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public constructor <init>(Lcom/android/launcher4/AppInfo;)V
    .locals 2
    .param p1, "info"    # Lcom/android/launcher4/AppInfo;

    .prologue
    .line 108
    invoke-direct {p0, p1}, Lcom/android/launcher4/ItemInfo;-><init>(Lcom/android/launcher4/ItemInfo;)V

    .line 57
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher4/AppInfo;->flags:I

    .line 109
    iget-object v0, p1, Lcom/android/launcher4/AppInfo;->componentName:Landroid/content/ComponentName;

    iput-object v0, p0, Lcom/android/launcher4/AppInfo;->componentName:Landroid/content/ComponentName;

    .line 110
    iget-object v0, p1, Lcom/android/launcher4/AppInfo;->title:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher4/AppInfo;->title:Ljava/lang/CharSequence;

    .line 111
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p1, Lcom/android/launcher4/AppInfo;->intent:Landroid/content/Intent;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    iput-object v0, p0, Lcom/android/launcher4/AppInfo;->intent:Landroid/content/Intent;

    .line 112
    iget v0, p1, Lcom/android/launcher4/AppInfo;->flags:I

    iput v0, p0, Lcom/android/launcher4/AppInfo;->flags:I

    .line 113
    iget-wide v0, p1, Lcom/android/launcher4/AppInfo;->firstInstallTime:J

    iput-wide v0, p0, Lcom/android/launcher4/AppInfo;->firstInstallTime:J

    .line 114
    return-void
.end method

.method public static dumpApplicationInfoList(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 6
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "label"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher4/AppInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 140
    .local p2, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher4/AppInfo;>;"
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 146
    return-void

    .line 141
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher4/AppInfo;

    .line 142
    .local v0, "info":Lcom/android/launcher4/AppInfo;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "   title=\""

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v0, Lcom/android/launcher4/AppInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\" iconBitmap="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 143
    iget-object v3, v0, Lcom/android/launcher4/AppInfo;->iconBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " firstInstallTime="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 144
    iget-wide v4, v0, Lcom/android/launcher4/AppInfo;->firstInstallTime:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 142
    invoke-static {p0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static initFirstInstallTime(Landroid/content/pm/PackageInfo;)J
    .locals 2
    .param p0, "pi"    # Landroid/content/pm/PackageInfo;

    .prologue
    .line 104
    iget-wide v0, p0, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    return-wide v0
.end method

.method public static initFlags(Landroid/content/pm/PackageInfo;)I
    .locals 3
    .param p0, "pi"    # Landroid/content/pm/PackageInfo;

    .prologue
    .line 91
    iget-object v2, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 92
    .local v0, "appFlags":I
    const/4 v1, 0x0

    .line 93
    .local v1, "flags":I
    and-int/lit8 v2, v0, 0x1

    if-nez v2, :cond_0

    .line 94
    or-int/lit8 v1, v1, 0x1

    .line 96
    and-int/lit16 v2, v0, 0x80

    if-eqz v2, :cond_0

    .line 97
    or-int/lit8 v1, v1, 0x2

    .line 100
    :cond_0
    return v1
.end method


# virtual methods
.method protected getIntent()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/launcher4/AppInfo;->intent:Landroid/content/Intent;

    return-object v0
.end method

.method getPackageName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 153
    iget-object v1, p0, Lcom/android/launcher4/AppInfo;->intent:Landroid/content/Intent;

    if-eqz v1, :cond_1

    .line 154
    iget-object v1, p0, Lcom/android/launcher4/AppInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v0

    .line 155
    .local v0, "packageName":Ljava/lang/String;
    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/android/launcher4/AppInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 156
    iget-object v1, p0, Lcom/android/launcher4/AppInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 159
    :cond_0
    if-eqz v0, :cond_1

    .line 163
    .end local v0    # "packageName":Ljava/lang/String;
    :goto_0
    return-object v0

    :cond_1
    const-string v0, ""

    goto :goto_0
.end method

.method public makeShortcut()Lcom/android/launcher4/ShortcutInfo;
    .locals 1

    .prologue
    .line 149
    new-instance v0, Lcom/android/launcher4/ShortcutInfo;

    invoke-direct {v0, p0}, Lcom/android/launcher4/ShortcutInfo;-><init>(Lcom/android/launcher4/AppInfo;)V

    return-object v0
.end method

.method final setActivity(Landroid/content/ComponentName;I)V
    .locals 2
    .param p1, "className"    # Landroid/content/ComponentName;
    .param p2, "launchFlags"    # I

    .prologue
    .line 124
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/launcher4/AppInfo;->intent:Landroid/content/Intent;

    .line 125
    iget-object v0, p0, Lcom/android/launcher4/AppInfo;->intent:Landroid/content/Intent;

    const-string v1, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 126
    iget-object v0, p0, Lcom/android/launcher4/AppInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 127
    iget-object v0, p0, Lcom/android/launcher4/AppInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v0, p2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 128
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher4/AppInfo;->itemType:I

    .line 129
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 133
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ApplicationInfo(title="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/launcher4/AppInfo;->title:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/android/launcher4/AppInfo;->id:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 134
    const-string v1, " type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher4/AppInfo;->itemType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " container="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/android/launcher4/AppInfo;->container:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 135
    const-string v1, " screen="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/android/launcher4/AppInfo;->screenId:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " cellX="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher4/AppInfo;->cellX:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " cellY="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher4/AppInfo;->cellY:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 136
    const-string v1, " spanX="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher4/AppInfo;->spanX:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " spanY="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher4/AppInfo;->spanY:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " dropPos="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher4/AppInfo;->dropPos:[I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 133
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
