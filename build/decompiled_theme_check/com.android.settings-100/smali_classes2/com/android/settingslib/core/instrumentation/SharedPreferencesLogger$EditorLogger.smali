.class public Lcom/android/settingslib/core/instrumentation/SharedPreferencesLogger$EditorLogger;
.super Ljava/lang/Object;
.source "SharedPreferencesLogger.java"

# interfaces
.implements Landroid/content/SharedPreferences$Editor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settingslib/core/instrumentation/SharedPreferencesLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "EditorLogger"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settingslib/core/instrumentation/SharedPreferencesLogger;


# direct methods
.method public constructor <init>(Lcom/android/settingslib/core/instrumentation/SharedPreferencesLogger;)V
    .locals 0

    .line 203
    iput-object p1, p0, Lcom/android/settingslib/core/instrumentation/SharedPreferencesLogger$EditorLogger;->this$0:Lcom/android/settingslib/core/instrumentation/SharedPreferencesLogger;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply()V
    .locals 0

    return-void
.end method

.method public clear()Landroid/content/SharedPreferences$Editor;
    .locals 0

    return-object p0
.end method

.method public commit()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;
    .locals 1

    .line 236
    iget-object v0, p0, Lcom/android/settingslib/core/instrumentation/SharedPreferencesLogger$EditorLogger;->this$0:Lcom/android/settingslib/core/instrumentation/SharedPreferencesLogger;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-static {v0, p1, p2}, Lcom/android/settingslib/core/instrumentation/SharedPreferencesLogger;->access$400(Lcom/android/settingslib/core/instrumentation/SharedPreferencesLogger;Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0
.end method

.method public putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;
    .locals 1

    .line 230
    iget-object v0, p0, Lcom/android/settingslib/core/instrumentation/SharedPreferencesLogger$EditorLogger;->this$0:Lcom/android/settingslib/core/instrumentation/SharedPreferencesLogger;

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-static {v0, p1, p2}, Lcom/android/settingslib/core/instrumentation/SharedPreferencesLogger;->access$400(Lcom/android/settingslib/core/instrumentation/SharedPreferencesLogger;Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0
.end method

.method public putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;
    .locals 1

    .line 218
    iget-object v0, p0, Lcom/android/settingslib/core/instrumentation/SharedPreferencesLogger$EditorLogger;->this$0:Lcom/android/settingslib/core/instrumentation/SharedPreferencesLogger;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {v0, p1, p2}, Lcom/android/settingslib/core/instrumentation/SharedPreferencesLogger;->access$400(Lcom/android/settingslib/core/instrumentation/SharedPreferencesLogger;Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0
.end method

.method public putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;
    .locals 1

    .line 224
    iget-object v0, p0, Lcom/android/settingslib/core/instrumentation/SharedPreferencesLogger$EditorLogger;->this$0:Lcom/android/settingslib/core/instrumentation/SharedPreferencesLogger;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-static {v0, p1, p2}, Lcom/android/settingslib/core/instrumentation/SharedPreferencesLogger;->access$400(Lcom/android/settingslib/core/instrumentation/SharedPreferencesLogger;Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0
.end method

.method public putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    .locals 1

    .line 206
    iget-object v0, p0, Lcom/android/settingslib/core/instrumentation/SharedPreferencesLogger$EditorLogger;->this$0:Lcom/android/settingslib/core/instrumentation/SharedPreferencesLogger;

    invoke-static {v0, p1, p2}, Lcom/android/settingslib/core/instrumentation/SharedPreferencesLogger;->access$300(Lcom/android/settingslib/core/instrumentation/SharedPreferencesLogger;Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/content/SharedPreferences$Editor;"
        }
    .end annotation

    .line 212
    iget-object v0, p0, Lcom/android/settingslib/core/instrumentation/SharedPreferencesLogger$EditorLogger;->this$0:Lcom/android/settingslib/core/instrumentation/SharedPreferencesLogger;

    const-string v1, ","

    invoke-static {v1, p2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p1, p2}, Lcom/android/settingslib/core/instrumentation/SharedPreferencesLogger;->access$300(Lcom/android/settingslib/core/instrumentation/SharedPreferencesLogger;Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    .locals 0

    return-object p0
.end method
