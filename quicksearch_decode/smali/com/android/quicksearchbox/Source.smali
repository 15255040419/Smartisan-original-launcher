.class public interface abstract Lcom/android/quicksearchbox/Source;
.super Ljava/lang/Object;
.source "Source.java"

# interfaces
.implements Lcom/android/quicksearchbox/SuggestionCursorProvider;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/quicksearchbox/SuggestionCursorProvider<",
        "Lcom/android/quicksearchbox/SourceResult;",
        ">;"
    }
.end annotation


# static fields
.field public static final QUERY_RESULT_PAGE:I = 0x2

.field public static final QUERY_SUGGESTION:I = 0x0

.field public static final QUERY_T9:I = 0x1


# virtual methods
.method public abstract canRead()Z
.end method

.method public abstract createSearchIntent(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;
.end method

.method public abstract createVoiceSearchIntent(Landroid/os/Bundle;)Landroid/content/Intent;
.end method

.method public abstract getDefaultIntentAction()Ljava/lang/String;
.end method

.method public abstract getDefaultIntentData()Ljava/lang/String;
.end method

.method public abstract getHint()Ljava/lang/CharSequence;
.end method

.method public abstract getIcon(Ljava/lang/String;)Lcom/android/quicksearchbox/util/NowOrLater;
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
.end method

.method public abstract getIconUri(Ljava/lang/String;)Landroid/net/Uri;
.end method

.method public abstract getIntentComponent()Landroid/content/ComponentName;
.end method

.method public abstract getLabel()Ljava/lang/CharSequence;
.end method

.method public abstract getMaxDisplay()I
.end method

.method public abstract getMaxShortcuts(Lb/a/a/m;)I
.end method

.method public abstract getQueryThreshold()I
.end method

.method public abstract getRoot()Lcom/android/quicksearchbox/Source;
.end method

.method public abstract getSettingsDescription()Ljava/lang/CharSequence;
.end method

.method public abstract getSourceIcon()Landroid/graphics/drawable/Drawable;
.end method

.method public abstract getSourceIconUri()Landroid/net/Uri;
.end method

.method public abstract getSuggestUri()Ljava/lang/String;
.end method

.method public abstract getSuggestions(Ljava/lang/String;IZI)Lcom/android/quicksearchbox/SourceResult;
.end method

.method public bridge synthetic getSuggestions(Ljava/lang/String;IZI)Lcom/android/quicksearchbox/SuggestionCursor;
    .locals 0

    .line 1
    invoke-interface {p0, p1, p2, p3, p4}, Lcom/android/quicksearchbox/Source;->getSuggestions(Ljava/lang/String;IZI)Lcom/android/quicksearchbox/SourceResult;

    move-result-object p1

    return-object p1
.end method

.method public abstract getVersionCode()I
.end method

.method public abstract includeInAll()Z
.end method

.method public abstract isVersionCodeCompatible(I)Z
.end method

.method public abstract queryAfterZeroResults()Z
.end method

.method public abstract refreshShortcut(Ljava/lang/String;Ljava/lang/String;)Lcom/android/quicksearchbox/SuggestionCursor;
.end method

.method public abstract voiceSearchEnabled()Z
.end method
