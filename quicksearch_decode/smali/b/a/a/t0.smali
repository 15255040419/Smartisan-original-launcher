.class public Lb/a/a/t0;
.super Landroid/database/AbstractCursor;
.source "SuggestionCursorBackedCursor.java"


# static fields
.field public static final a:[Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 13

    const-string v0, "_id"

    const-string v1, "suggest_text_1"

    const-string v2, "suggest_text_2"

    const-string v3, "suggest_text_2_url"

    const-string v4, "suggest_icon_1"

    const-string v5, "suggest_icon_2"

    const-string v6, "suggest_intent_action"

    const-string v7, "suggest_intent_data"

    const-string v8, "suggest_intent_extra_data"

    const-string v9, "suggest_intent_query"

    const-string v10, "suggest_format"

    const-string v11, "suggest_shortcut_id"

    const-string v12, "suggest_spinner_while_refreshing"

    .line 1
    filled-new-array/range {v0 .. v12}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lb/a/a/t0;->a:[Ljava/lang/String;

    return-void
.end method
