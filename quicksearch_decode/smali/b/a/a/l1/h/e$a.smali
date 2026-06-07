.class public Lb/a/a/l1/h/e$a;
.super Ljava/lang/Object;
.source "WebSourceCorpusResult.java"

# interfaces
.implements Lcom/android/quicksearchbox/Source;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lb/a/a/l1/h/e;->getSuggestionSource()Lcom/android/quicksearchbox/Source;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>(Lb/a/a/l1/h/e;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public canRead()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public createSearchIntent(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public createVoiceSearchIntent(Landroid/os/Bundle;)Landroid/content/Intent;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getDefaultIntentAction()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getDefaultIntentData()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getHint()Ljava/lang/CharSequence;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getIcon(Ljava/lang/String;)Lcom/android/quicksearchbox/util/NowOrLater;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/android/quicksearchbox/util/NowOrLater<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public getIconUri(Ljava/lang/String;)Landroid/net/Uri;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getIntentComponent()Landroid/content/ComponentName;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getLabel()Ljava/lang/CharSequence;
    .locals 1

    const-string v0, "web"

    return-object v0
.end method

.method public getMaxDisplay()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getMaxShortcuts(Lb/a/a/m;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "suggestion_web"

    return-object v0
.end method

.method public getQueryThreshold()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getRoot()Lcom/android/quicksearchbox/Source;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getSettingsDescription()Ljava/lang/CharSequence;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getSourceIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getSourceIconUri()Landroid/net/Uri;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getSuggestUri()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getSuggestions(Ljava/lang/String;IZI)Lcom/android/quicksearchbox/SourceResult;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public bridge synthetic getSuggestions(Ljava/lang/String;IZI)Lcom/android/quicksearchbox/SuggestionCursor;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3, p4}, Lb/a/a/l1/h/e$a;->getSuggestions(Ljava/lang/String;IZI)Lcom/android/quicksearchbox/SourceResult;

    move-result-object p1

    return-object p1
.end method

.method public getVersionCode()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public includeInAll()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isVersionCodeCompatible(I)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public queryAfterZeroResults()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public refreshShortcut(Ljava/lang/String;Ljava/lang/String;)Lcom/android/quicksearchbox/SuggestionCursor;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public voiceSearchEnabled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
